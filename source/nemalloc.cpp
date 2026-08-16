#include <sys/mman.h>
#include <cstdlib>
#include <string.h>
#include "include/nemalloc.hpp"
#include "include/types.hpp"
#include "include/memory.hpp"
#include "include/qtable.hpp"
#include "include/compaction.hpp"
#include "include/helper.hpp"

struct tls_cache_t {
    uint32_t unique_ids[TLS_CACHE_SIZE];
    int count;
    page_t* owner_page;

    ~tls_cache_t() {
        for (int i = 0; i < count; ++i) {
            nefree((handle_t){unique_ids[i]});
        }
    }
};

struct thread_local_data_t {
    tls_cache_t cache;
    page_t* last_used_page[SIZE_CLASS_COUNT];
    int cached_action;
    int call_count;
};

static thread_local thread_local_data_t tls_data = {
    .cache = {{0}, 0, nullptr},
    .last_used_page = {nullptr},
    .cached_action = USE_EXISTING_PAGE,
    .call_count = 0
};

void init_thread_cache() {
    tls_data.cache.count = 0;
    tls_data.cache.owner_page = nullptr;
    for (int i = 0; i < SIZE_CLASS_COUNT; ++i) {
        tls_data.last_used_page[i] = nullptr;
    }
    tls_data.cached_action = USE_EXISTING_PAGE;
    tls_data.call_count = 0;
}

static void refill_tls_cache(page_t* page, int count) {
    int filled = 0;
    while (filled < count && tls_data.cache.count < TLS_CACHE_SIZE) {
        int slot = find_free_slot(page);
        if (slot == -1) break;

        uint32_t unique_id = g_next_unique_id.fetch_add(1, std::memory_order_relaxed);
        if (unique_id >= MAX_HANDLES) break;

        void* slot_address = (uint8_t*)page->base_ptr + (slot << 5);
        *(uint32_t*)slot_address = unique_id;
        *(uint32_t*)((uint8_t*)slot_address + 4) = (uint32_t)page->id;

        g_indirection_table[unique_id].store(slot_address, std::memory_order_release);
        mark_slot_used(page, slot);

        tls_data.cache.unique_ids[tls_data.cache.count++] = unique_id;
        filled++;
    }
    tls_data.cache.owner_page = page;
    tls_data.last_used_page[page->size_class] = page;
}

handle_t nemalloc(size_t size) {
    ensure_compaction_thread_started();

    // Q‑table aksiyonunu periyodik olarak güncelle
    if (++tls_data.call_count >= 5000) {
        int state = get_current_state(size);
        tls_data.cached_action = select_action(state, 0.0f);
        tls_data.call_count = 0;
    }
    int action = tls_data.cached_action;

    if (likely(tls_data.cache.count > 0)) {
        uint32_t uid = tls_data.cache.unique_ids[--tls_data.cache.count];
        void* ptr = get_ptr((handle_t){uid});
        if (ptr) return (handle_t){uid};
    }

    uint8_t sc = (size <= PAGE_SMALL_SIZE) ? 0 :
                 (size <= PAGE_MEDIUM_SIZE) ? 1 :
                 (size <= PAGE_LARGE_SIZE) ? 2 : 3;

    page_t* page = nullptr;
    bool page_locked = false;

    page = tls_data.last_used_page[sc];
    if (likely(page && page->free_slot_count > 0 && !page->is_compacting)) {
        lock_page(page);
        if (page->free_slot_count > 0 && !page->is_compacting) {
            page_locked = true;
            goto page_found;
        }
        unlock_page(page);
        page = nullptr;
    }

    if (action == USE_EXISTING_PAGE) {
        page = g_size_class_stats[sc].head;
        while (page) {
            if (page->free_slot_count > 0 && !page->is_compacting) {
                lock_page(page);
                if (page->free_slot_count > 0 && !page->is_compacting) {
                    page_locked = true;
                    break;
                }
                unlock_page(page);
            }
            page = page->next;
        }
    }

    if (!page) {
        size_t page_size = choose_page_size(size);
        page = create_page(page_size);
        if (!page) {
            // mmap fallback
            void* ptr = mmap(NULL, size, PROT_READ | PROT_WRITE,
                             MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
            if (ptr == MAP_FAILED) return (handle_t){0};
            return (handle_t){0};
        }
        lock_page(page);
        page_locked = true;
    }

page_found:
    if (!page_locked) {
        lock_page(page);
    }

    tls_data.last_used_page[sc] = page;

    int slot = find_free_slot(page);
    if (slot == -1) {
        unlock_page(page);
        size_t page_size = choose_page_size(size);
        page = create_page(page_size);
        if (!page) {
            void* ptr = mmap(NULL, size, PROT_READ | PROT_WRITE,
                             MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
            if (ptr == MAP_FAILED) return (handle_t){0};
            return (handle_t){0};
        }
        lock_page(page);
        tls_data.last_used_page[sc] = page;
        slot = find_free_slot(page);
        if (slot == -1) {
            unlock_page(page);
            return (handle_t){0};
        }
    }

    uint32_t unique_id = g_next_unique_id.fetch_add(1, std::memory_order_relaxed);
    if (unlikely(unique_id >= MAX_HANDLES)) {
        unlock_page(page);
        return (handle_t){0};
    }

    void* slot_address = (uint8_t*)page->base_ptr + (slot << 5);
    *(uint32_t*)slot_address = unique_id;
    *(uint32_t*)((uint8_t*)slot_address + 4) = (uint32_t)page->id;

    g_indirection_table[unique_id].store(slot_address, std::memory_order_release);
    mark_slot_used(page, slot);

    if (tls_data.cache.count < TLS_CACHE_SIZE) {
        tls_data.cache.unique_ids[tls_data.cache.count++] = unique_id;
        tls_data.cache.owner_page = page;
    }

    if (unlikely(tls_data.cache.count < 16)) {
        refill_tls_cache(page, 32);
        unlock_page(page);
        return (handle_t){unique_id};
    }

    unlock_page(page);
    return (handle_t){unique_id};
}

void nefree(handle_t h) noexcept {
    uint32_t uid = h.unique_id;
    void* ptr = g_indirection_table[uid].load(std::memory_order_acquire);
    if (!ptr) return;

    uint32_t page_id = *(uint32_t*)((uint8_t*)ptr + 4);
    if (page_id >= MAX_PAGES) return;

    page_t* page = g_page_pool[page_id].load(std::memory_order_acquire);
    if (!page) return;

    int slot = ((uint8_t*)ptr - (uint8_t*)page->base_ptr) >> 5;

    lock_page(page);
    mark_slot_free(page, slot);
    unlock_page(page);

    g_indirection_table[uid].store(nullptr, std::memory_order_release);
}

void* get_ptr(handle_t h) noexcept {
    return g_indirection_table[h.unique_id].load(std::memory_order_acquire);
}