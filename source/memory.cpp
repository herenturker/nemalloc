#include <sys/mman.h>
#include <cstring>
#include <cstdlib>
#include <cstdio>
// #include <iostream>
#include "include/memory.hpp"
#include "include/types.hpp"
#include "include/helper.hpp"

#ifdef __AVX2__
#include <immintrin.h>
#endif

static inline void bitmap_clear_avx2(uint8_t *bitmap, uint32_t bytes) {
    uint32_t i = 0;
    __m256i zero = _mm256_setzero_si256();
    for (; i + 31 < bytes; i += 32) {
        _mm256_storeu_si256((__m256i *)(bitmap + i), zero);
    }
    for (; i < bytes; ++i) {
        bitmap[i] = 0;
    }
}
void init_heap_pool(size_t size) {
    void* addr = mmap(NULL, size, PROT_READ | PROT_WRITE,
                      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (addr == MAP_FAILED) {
        g_heap_pool.total_size = 0;
        return;
    }
    g_heap_pool.start = addr;
    g_heap_pool.total_size = size;
    g_heap_pool.used_size = 0;

    for (int i = 0; i < SIZE_CLASS_COUNT; ++i) {
        g_size_class_stats[i].page_count = 0;
        g_size_class_stats[i].head = nullptr;
    }
}

void* allocate_from_pool(size_t size) {
    size_t old = __atomic_fetch_add(&g_heap_pool.used_size, size, __ATOMIC_ACQ_REL);
    if (old + size > g_heap_pool.total_size) {
        __atomic_sub_fetch(&g_heap_pool.used_size, size, __ATOMIC_ACQ_REL);
        return NULL;
    }
    return (uint8_t*)g_heap_pool.start + old;
}

void lock_page(page_t* page) {
    if (likely(!page->lock.test_and_set(std::memory_order_acquire))) {
        return;
    }
    while (page->lock.test_and_set(std::memory_order_acquire)) {
        _mm_pause();
    }
}

void unlock_page(page_t* page) {
    page->lock.clear(std::memory_order_release);
}

void add_page_to_size_class(page_t* page) {
    uint8_t sc = page->size_class;
    page_t* old_head;
    do {
        old_head = g_size_class_stats[sc].head;
        page->next = old_head;
    } while (!__atomic_compare_exchange_n(&g_size_class_stats[sc].head, &old_head, page, false, __ATOMIC_RELEASE, __ATOMIC_ACQUIRE));
    g_size_class_stats[sc].page_count.fetch_add(1, std::memory_order_relaxed);
}

page_t* create_page(size_t size) {
    // page metadata'sini havuzdan al (malloc yok)
    void* meta_mem = allocate_from_pool(sizeof(page_t));
    if (!meta_mem) return nullptr;
    page_t* page = (page_t*)meta_mem;
    
    void* base = allocate_from_pool(size);
    if (!base) {
        base = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (base == MAP_FAILED) return nullptr;
    }
    page->base_ptr = base;
    page->total_slot_count = size / SLOT_SIZE;
    page->bitmap_bytes = (page->total_slot_count + 7) / 8;
    page->bitmap = (uint8_t*)base + SLOT_HEADER_SIZE;
    bitmap_clear_avx2(page->bitmap, page->bitmap_bytes);
    page->free_slot_count = page->total_slot_count;
    page->last_free_slot_hint = 0;
    page->is_compacting = false;
    page->size_class = (size <= PAGE_SMALL_SIZE) ? 0 :
                       (size <= PAGE_MEDIUM_SIZE) ? 1 :
                       (size <= PAGE_LARGE_SIZE) ? 2 : 3;
    page->next = nullptr;
    page->lock.clear();
    page->max_contiguous_free = page->total_slot_count;
    add_page_to_pool(page);
    add_page_to_size_class(page);
    return page;
}

void add_page_to_pool(page_t* page) noexcept {
    int idx = g_page_count.fetch_add(1, std::memory_order_relaxed);
    if (idx >= MAX_PAGES) {
        g_page_count.fetch_sub(1, std::memory_order_relaxed);
        return;
    }
    page->id = g_next_page_id.fetch_add(1, std::memory_order_relaxed);
    g_page_pool[idx].store(page, std::memory_order_relaxed);
}

int find_free_slot(page_t* page) {
    if (!page || page->free_slot_count == 0) return -1;
    uint8_t* bitmap = page->bitmap;
    uint32_t bytes = page->bitmap_bytes;
    uint32_t start_byte = page->last_free_slot_hint >> 3;

    uint32_t scan_limit = start_byte + 256;
    if (scan_limit > bytes) scan_limit = bytes;
    for (uint32_t byte = start_byte; byte < scan_limit; ++byte) {
        uint8_t inv = ~bitmap[byte];
        if (likely(inv)) {
            int bit = __builtin_ctz(inv);
            int slot = (byte << 3) + bit;
            if (slot < page->total_slot_count) {
                page->last_free_slot_hint = slot;
                return slot;
            }
        }
    }

    if (unlikely(page->free_slot_count < 10)) {
        return -1;
    }

#ifdef __AVX2__
    uint32_t avx2_limit = (bytes < 256) ? bytes : 256;
    for (uint32_t i = 0; i + 31 < avx2_limit; i += 32) {
        __m256i v = _mm256_loadu_si256((__m256i*)(bitmap + i));
        int mask = _mm256_movemask_epi8(_mm256_cmpeq_epi8(v, _mm256_setzero_si256()));
        if (mask) {
            int slot_in_block = __builtin_ctz(mask);
            int global_slot = (i << 3) + slot_in_block;
            if (global_slot < page->total_slot_count) {
                page->last_free_slot_hint = global_slot;
                return global_slot;
            }
        }
    }
#endif

    return -1;
}

void mark_slot_used(page_t* page, int slot) noexcept {
    if (!page || slot < 0 || slot >= page->total_slot_count) return;
    int byte = slot >> 3;
    int bit = slot & 7;
    uint8_t mask = (1u << bit);
    __atomic_fetch_or(&page->bitmap[byte], mask, __ATOMIC_RELAXED);
    page->free_slot_count.fetch_sub(1, std::memory_order_relaxed);
}

void mark_slot_free(page_t* page, int slot) noexcept {
    if (!page || slot < 0 || slot >= page->total_slot_count) return;
    int byte = slot >> 3;
    int bit = slot & 7;
    uint8_t mask = ~(1u << bit);
    __atomic_fetch_and(&page->bitmap[byte], mask, __ATOMIC_RELAXED);
    page->free_slot_count.fetch_add(1, std::memory_order_relaxed);
    if (slot < page->last_free_slot_hint) {
        page->last_free_slot_hint = slot;
    }
}

void move_slot(uint32_t unique_id, void* new_address) {
    g_indirection_table[unique_id].store(new_address, std::memory_order_release);
}

void compact_page(page_t* page) {
    if (!page || page->is_compacting) return;
    lock_page(page);
    if (page->is_compacting) { unlock_page(page); return; }
    page->is_compacting = true;
    unlock_page(page);

    int total_slots = page->total_slot_count;
    uint32_t* used_unique = (uint32_t*)alloca(total_slots * sizeof(uint32_t));
    uint32_t* used_slot_idx = (uint32_t*)alloca(total_slots * sizeof(uint32_t));
    int used_count = 0;
    uint8_t* base = (uint8_t*)page->base_ptr;
    uint32_t bytes = page->bitmap_bytes;
    uint8_t* bitmap = page->bitmap;

    for (uint32_t byte = 0; byte < bytes; ++byte) {
        if (bitmap[byte] != 0) {
            for (int bit = 0; bit < 8; ++bit) {
                if (bitmap[byte] & (1u << bit)) {
                    int slot = (byte << 3) + bit;
                    if (slot < total_slots) {
                        void* slot_ptr = base + (slot << 5);
                        uint32_t uid = *(uint32_t*)slot_ptr;
                        used_unique[used_count] = uid;
                        used_slot_idx[used_count] = slot;
                        used_count++;
                    }
                }
            }
        }
    }

    int write_pos = 0;
    for (int i = 0; i < used_count; ++i) {
        int src_slot = used_slot_idx[i];
        void* src = base + (src_slot << 5);
        void* dst = base + (write_pos << 5);
        if (src != dst) {
            memmove(dst, src, SLOT_SIZE);
            uint32_t uid = *(uint32_t*)dst;
            move_slot(uid, dst);
        }
        write_pos++;
        __builtin_prefetch((uint8_t*)src + 64, 1, 3);
    }

    bitmap_clear_avx2(bitmap, page->bitmap_bytes);
    for (int i = 0; i < write_pos; ++i) {
        int byte = i >> 3;
        int bit = i & 7;
        bitmap[byte] |= (1u << bit);
    }

    lock_page(page);
    page->free_slot_count = total_slots - write_pos;
    page->last_free_slot_hint = write_pos;
    page->is_compacting = false;
    unlock_page(page);
    page->max_contiguous_free = page->free_slot_count.load();
}

size_t choose_page_size(size_t size) {
    if (size <= PAGE_SMALL_SIZE) return PAGE_SMALL_SIZE;
    else if (size <= PAGE_MEDIUM_SIZE) return PAGE_MEDIUM_SIZE;
    else if (size <= PAGE_LARGE_SIZE) return PAGE_LARGE_SIZE;
    else return PAGE_HUGE_SIZE;
}

uint32_t compute_max_free_run(page_t* page) {
    uint8_t* bitmap = page->bitmap;
    uint32_t bytes = page->bitmap_bytes;
    uint32_t max_run = 0;
    uint32_t current_run = 0;

    for (uint32_t i = 0; i < bytes; ++i) {
        uint8_t byte = bitmap[i];
        for (int bit = 0; bit < 8; ++bit) {
            if ((byte & (1u << bit)) == 0) {
                // Boş bit
                ++current_run;
                if (current_run > max_run) max_run = current_run;
            } else {
                current_run = 0;
            }
        }
    }
    return max_run;
}