// compaction.cpp
#include "include/compaction.hpp"
#include "include/memory.hpp"
#include "include/types.hpp"
#include <pthread.h>
#include <mutex>
#include <unistd.h>
// #include <iostream>
#include <atomic>

std::atomic<bool> g_compaction_running{true};
static pthread_t compaction_thread = 0;
static std::once_flag compaction_start_flag;
void *compaction_thread_func(void *arg)
{
    try
    {
        while (g_compaction_running.load(std::memory_order_acquire))
        {
            usleep(200000);
            int count = g_page_count.load(std::memory_order_acquire);
            if (unlikely(count == 0))
                continue;

            float total_frag = 0.0f;
            int pages_checked = 0;

            for (int i = 0; i < count; ++i)
            {
                page_t *page = g_page_pool[i].load(std::memory_order_acquire);
                if (!page || page->is_compacting)
                    continue;

                lock_page(page);

                uint32_t total_free = page->free_slot_count.load(std::memory_order_acquire);
                if (unlikely(total_free == 0))
                {
                    page->max_contiguous_free = 0;
                    unlock_page(page);
                    continue;
                }

                if (!page->bitmap || page->bitmap_bytes == 0)
                {
                    unlock_page(page);
                    continue;
                }

                uint32_t max_free = compute_max_free_run(page);
                page->max_contiguous_free = max_free;

                float frag = 1.0f - (float)max_free / (float)total_free;
                total_frag += frag;
                pages_checked++;

                unlock_page(page);

                if (frag > 0.2f)
                {
                    compact_page(page);
                }
            }

            if (pages_checked > 0)
            {
                float avg = total_frag / (float)pages_checked;
                g_avg_fragmentation.store(avg, std::memory_order_release);
            }
        }
    }
    catch (...)
    {
        // std::cerr << "[nemalloc] Compaction thread stopped due to exception.\n";
        return nullptr;
    }
    return nullptr;
}

void start_compaction_thread()
{
    if (compaction_thread == 0)
    {
        g_compaction_running.store(true, std::memory_order_release);
        if (pthread_create(&compaction_thread, nullptr, compaction_thread_func, nullptr) != 0)
        {
            // std::cerr << "[nemalloc] Failed to start compaction thread.\n";
            g_compaction_running.store(false, std::memory_order_release);
        }
    }
}

void stop_compaction_thread()
{
    g_compaction_running.store(false, std::memory_order_release);
}

void join_compaction_thread()
{
    if (compaction_thread != 0)
    {
        pthread_join(compaction_thread, nullptr);
        compaction_thread = 0;
    }
}

bool is_compaction_running()
{
    return g_compaction_running.load(std::memory_order_acquire);
}

std::atomic<bool> compaction_started{false};
void ensure_compaction_thread_started()
{
    if (!compaction_started.load(std::memory_order_acquire))
    {
        std::call_once(compaction_start_flag, []()
                       {
            start_compaction_thread();
            compaction_started.store(true, std::memory_order_release); });
    }
}