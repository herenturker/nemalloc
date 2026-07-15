#ifndef _TYPES_HPP
#define _TYPES_HPP

// INCLUDE LIBRARIES
#include <stdint.h>
#include "helper.hpp"

// SIZE DEFINITIONS
#define ONE_KB 1024
#define ONE_MB (1024 * ONE_KB)
#define ONE_GB (1024 * ONE_MB)
#define MAX_SLOTS 65536 // 2MB Huge page can handle maximum 65536 slots (one slot 32 bytes)
#define SLOT_SIZE 32    // Bytes

#define PAGE_SMALL_SIZE (4 * ONE_KB)
#define PAGE_MEDIUM_SIZE (16 * ONE_KB)
#define PAGE_LARGE_SIZE (64 * ONE_KB)
#define PAGE_HUGE_SIZE (2 * ONE_MB)

#define SLOTS_SMALL (PAGE_SMALL_SIZE / SLOT_SIZE)
#define SLOTS_MEDIUM (PAGE_MEDIUM_SIZE / SLOT_SIZE)
#define SLOTS_LARGE (PAGE_LARGE_SIZE / SLOT_SIZE)
#define SLOTS_HUGE (PAGE_HUGE_SIZE / SLOT_SIZE)

#define BITMAP_BYTES_SMALL (SLOTS_SMALL / 8)
#define BITMAP_BYTES_MEDIUM (SLOTS_MEDIUM / 8)
#define BITMAP_BYTES_LARGE (SLOTS_LARGE / 8)
#define BITMAP_BYTES_HUGE (SLOTS_HUGE / 8)

/* STRUCTS */
struct handle_entry_t
{
    uint64_t page_id;
    uint32_t slot_index;
    uint32_t unique_id;
} __packed;

struct indirection_table_entry_t
{
    void *current_ptr;
    void *old_ptr;
} __packed;

struct page_metadata_entry_t
{
    bool is_compacting;
    uint8_t *bitmap;
    uint16_t free_slot_count;
    uint32_t total_slot_count;
    uint32_t bitmap_bytes;
    uint32_t last_free_slot_hint; // Last free slot's location
    void *base_ptr;
} __packed;

/* TYPE DEFINITIONS */
typedef handle_entry_t handle_t;
typedef indirection_table_entry_t indirection_t;
typedef page_metadata_entry_t page_t;

#endif // _TYPES_HPP