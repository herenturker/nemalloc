#include "include/types.hpp"

heap_pool_t g_heap_pool;
std::atomic<indirection_t> g_indirection_table[MAX_HANDLES];
std::atomic<uint32_t> g_next_unique_id{0};
std::atomic<uint64_t> g_next_page_id{0};
std::atomic<page_t*> g_page_pool[MAX_PAGES];
std::atomic<int> g_page_count{0};
size_class_stats_t g_size_class_stats[SIZE_CLASS_COUNT];
std::atomic<float> g_avg_fragmentation{0.0f};