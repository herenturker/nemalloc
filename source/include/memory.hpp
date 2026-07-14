#ifndef _MEMORY_HPP
#define _MEMORY_HPP

#include "types.hpp"

page_t *create_page(size_t size);
void destroy_page(page_t *page);
int find_free_slot(page_t *page);
void mark_slot_used(page_t *page, int slot);
void mark_slot_free(page_t *page, int slot);

#endif // _MEMORY_HPP