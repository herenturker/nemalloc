#ifndef _MEMORY_HPP
#define _MEMORY_HPP

#include "types.hpp"

void init_heap_pool(size_t size);
void* allocate_from_pool(size_t size);
page_t* create_page(size_t size);
void destroy_page(page_t* page);
void add_page_to_pool(page_t* page) noexcept;
int find_free_slot(page_t* page);
void mark_slot_used(page_t* page, int slot) noexcept;
void mark_slot_free(page_t* page, int slot) noexcept;
void move_slot(uint32_t unique_id, void* new_address);
page_t* get_first_page() noexcept;
void compact_page(page_t* page);
size_t choose_page_size(size_t size);
void lock_page(page_t* page);
void unlock_page(page_t* page);
void add_page_to_size_class(page_t* page);

#ifdef __cplusplus
extern "C" {
#endif
uint32_t compute_max_free_run(page_t* page);
#ifdef __cplusplus
}
#endif

#endif