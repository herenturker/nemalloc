// #include <iostream>
#include <thread>
#include <chrono>
#include <unistd.h>
#include <cstdlib>
#include <iomanip>
#include "include/nemalloc.hpp"
#include "include/memory.hpp"
#include "include/qtable.hpp"
#include "include/compaction.hpp"
#include "include/types.hpp"

__attribute__((constructor))
static void nemalloc_init() {
    if (access("qtable.bin", F_OK) == 0) {
        load_q_table("qtable.bin");
        // std::cout << "[nemalloc] Q-table loaded.\n";
    } else {
        // std::cerr << "[nemalloc] qtable.bin not found, using zero-initialized Q-table.\n";
        load_q_table("qtable.bin");
    }

    init_heap_pool(512ULL * ONE_MB);
    if (g_heap_pool.total_size == 0) {
        // std::cerr << "[nemalloc] Failed to initialize heap pool.\n";
        return;
    }
    // std::cout << "[nemalloc] Heap pool ready (512 MB).\n";

    // std::cout << "[nemalloc] Initializing thread cache.\n";
    init_thread_cache();
    // std::cout << "[nemalloc] Initialized thread cache.\n";

    // std::cout << "[nemalloc] Starting compaction thread.\n";
    start_compaction_thread();
    // std::cout << "[nemalloc] Started compaction thread.\n";
}

__attribute__((destructor))
static void nemalloc_cleanup() {
    stop_compaction_thread();
    join_compaction_thread();
    // std::cout << "[nemalloc] Shutting down.\n";
}

/*
extern "C" void run_nemalloc_benchmark(int num_allocs) {
    if (num_allocs <= 0) num_allocs = 50000000;
    // std::cout << "[nemalloc] Starting benchmark: " << num_allocs << " allocs...\n";

    auto start = std::chrono::high_resolution_clock::now();
    for (int i = 0; i < num_allocs; ++i) {
        size_t size = 64 + (rand() % 1024);
        handle_t h = nemalloc(size);
        if (i % 2 == 0) nefree(h);
    }
    auto end = std::chrono::high_resolution_clock::now();
    auto duration_ns = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    double avg_time_ns = (double)duration_ns / num_allocs;

    usleep(2000000);  // 2 saniye

    float avg_frag = g_avg_fragmentation.load(std::memory_order_acquire);

    // std::cout << "[nemalloc] Benchmark complete.\n";
    // std::cout << "   Time: " << duration_ns / 1e9 << " s\n";
    // std::cout << "   Avg alloc: " << avg_time_ns << " ns\n";
    // std::cout << "   Fragmentation: " << avg_frag * 100.0f << " %\n";
}
*/

int main() {
    if (access("qtable.bin", F_OK) != 0) {
        // std::cout << "[nemalloc] qtable.bin not found, training Q-table...\n";
        train_q_table();
        // std::cout << "[nemalloc] Q-table training complete and saved.\n";
    } else {
        // std::cout << "[nemalloc] qtable.bin exists, skipping training.\n";
    }
    return 0;
}