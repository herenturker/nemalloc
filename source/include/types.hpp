#ifndef _TYPES_HPP
#define _TYPES_HPP

#include <stdint.h>
#include <atomic>
#include "helper.hpp"

#define ONE_KB 1024
#define ONE_MB (1024 * ONE_KB)
#define ONE_GB (1024 * ONE_MB)
#define SLOT_SIZE 32
#define SLOT_HEADER_SIZE 8
#define MAX_PAGES 4096
#define MAX_HANDLES 16777216

#define PAGE_SMALL_SIZE (4 * ONE_KB)
#define PAGE_MEDIUM_SIZE (128 * ONE_KB)
#define PAGE_LARGE_SIZE (512 * ONE_KB)
#define PAGE_HUGE_SIZE (2 * ONE_MB)

#define SLOTS_SMALL (PAGE_SMALL_SIZE / SLOT_SIZE)
#define SLOTS_MEDIUM (PAGE_MEDIUM_SIZE / SLOT_SIZE)
#define SLOTS_LARGE (PAGE_LARGE_SIZE / SLOT_SIZE)
#define SLOTS_HUGE (PAGE_HUGE_SIZE / SLOT_SIZE)

#define BITMAP_BYTES_SMALL (SLOTS_SMALL / 8)
#define BITMAP_BYTES_MEDIUM (SLOTS_MEDIUM / 8)
#define BITMAP_BYTES_LARGE (SLOTS_LARGE / 8)
#define BITMAP_BYTES_HUGE (SLOTS_HUGE / 8)

#define SIZE_CLASS_COUNT 4
#define TLS_CACHE_SIZE 2048

struct handle_entry_t {
    uint32_t unique_id;
} __packed;

struct alignas(64) page_metadata_entry_t {
    std::atomic<uint16_t> free_slot_count;   
    std::atomic<uint32_t> max_contiguous_free; 
    uint32_t last_free_slot_hint;           
    std::atomic_flag lock;                    
    bool is_compacting;                        
    uint8_t size_class;                       

    uint32_t total_slot_count;                
    uint32_t bitmap_bytes;                     
    uint64_t id;                              
    void* base_ptr;                          
    uint8_t* bitmap;                        

    page_metadata_entry_t* next;            
};

struct heap_pool_t {
    void* start;
    size_t total_size;
    size_t used_size;
};

typedef handle_entry_t handle_t;
typedef void* indirection_t;
typedef page_metadata_entry_t page_t;

struct size_class_stats_t {
    std::atomic<uint32_t> page_count;
    page_t* head;
};

extern heap_pool_t g_heap_pool;
extern std::atomic<indirection_t> g_indirection_table[MAX_HANDLES];
extern std::atomic<uint32_t> g_next_unique_id;
extern std::atomic<uint64_t> g_next_page_id;
extern std::atomic<page_t*> g_page_pool[MAX_PAGES];
extern std::atomic<int> g_page_count;
extern size_class_stats_t g_size_class_stats[SIZE_CLASS_COUNT];
extern std::atomic<float> g_avg_fragmentation;

#endif