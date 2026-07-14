#ifndef _NEMALLOC_HPP
#define _NEMALLOC_HPP

#include "types.hpp"

handle_t nemalloc(size_t size);
void nefree(handle_t handle);
void* get_ptr(handle_t handle);

#endif // _NEMALLOC_HPP