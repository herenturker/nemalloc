#include <sys/mman.h>
#include <iostream>
#include <cstring>
#include <cstdlib>
#include "include/memory.hpp"
#include "include/types.hpp"

#ifdef __AVX2__
#include <immintrin.h>
#endif

page_t *create_page(size_t size)
{
    page_t *page = (page_t *)malloc(sizeof(page_t));
    if (!page)
        return nullptr;

    void *base = mmap(NULL, size, PROT_READ | PROT_WRITE,
                      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED)
    {
        free(page);
        return nullptr;
    }

    page->base_ptr = base;
    page->slot_count = (uint32_t)(size / SLOT_SIZE);
    page->bitmap_bytes = (page->slot_count + 7) / 8;

    page->bitmap = (uint8_t *)base;
    memset(page->bitmap, 0, page->bitmap_bytes);
    page->free_slot_count = page->slot_count;
    page->last_free_slot_hint = 0;
    page->is_compacting = false;

    return page;
}

void destroy_page(page_t *page)
{
    if (!page)
        return;
    if (page->base_ptr)
    {
        munmap(page->base_ptr, page->slot_count * SLOT_SIZE);
    }
    free(page);
}

int find_free_slot(page_t *page)
{
    if (!page || page->free_slot_count == 0)
        return -1;

    uint32_t bytes = page->bitmap_bytes;
    uint8_t *bitmap = page->bitmap;

#ifdef __AVX2__
    for (uint32_t i = 0; i + 31 < bytes; i += 32)
    {
        __m256i v = _mm256_load_si256((__m256i *)(bitmap + i));
        __m256i zero = _mm256_setzero_si256();
        int mask = _mm256_movemask_epi8(_mm256_cmpeq_epi8(v, zero));
        if (mask != 0)
        {
            int slot_in_block = __builtin_ctz(mask);
            int global_slot = i * 8 + slot_in_block;
            if (global_slot < page->slot_count)
            {
                return global_slot;
            }
        }
    }
#endif

    // Scalar fallback
    for (uint32_t byte = 0; byte < bytes; byte++)
    {
        if (bitmap[byte] != 0xFF)
        {
            for (int bit = 0; bit < 8; bit++)
            {
                if (!(bitmap[byte] & (1 << bit)))
                {
                    int slot = byte * 8 + bit;
                    if (slot < page->slot_count)
                        return slot;
                }
            }
        }
    }
    return -1;
}

void mark_slot_used(page_t *page, int slot)
{
    if (!page || slot < 0 || slot >= page->slot_count)
        return;
    int byte = slot / 8;
    int bit = slot % 8;
    page->bitmap[byte] |= (1 << bit);
    page->free_slot_count--;
}

void mark_slot_free(page_t *page, int slot)
{
    if (!page || slot < 0 || slot >= page->slot_count)
        return;
    int byte = slot / 8;
    int bit = slot % 8;
    page->bitmap[byte] &= ~(1 << bit);
    page->free_slot_count++;
    if (slot < page->last_free_slot_hint)
    {
        page->last_free_slot_hint = slot;
    }
}

void *allocate_one_gb()
{
    void *ptr = mmap(NULL, ONE_GB, PROT_READ | PROT_WRITE,
                     MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (ptr == MAP_FAILED)
    {
        std::cerr << "mmap failed to allocate 1 GB memory.\n";
        return nullptr;
    }
    return ptr;
}

void free_one_gb(void *ptr)
{
    if (ptr && munmap(ptr, ONE_GB) != 0)
    {
        std::cerr << "munmap failed to free 1 GB memory.\n";
    }
}