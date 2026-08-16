#ifndef COMPACTION_HPP
#define COMPACTION_HPP

#include <atomic>
#include <pthread.h>

// Compaction thread control funcs
void start_compaction_thread();
void stop_compaction_thread();
void join_compaction_thread();
bool is_compaction_running();

void compaction_thread_func();
// compaction.hpp
void ensure_compaction_thread_started();

// Global flag
extern std::atomic<bool> g_compaction_running;

#endif