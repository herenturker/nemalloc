#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <time.h>
#include <sched.h>
#include "include/qtable.hpp"
#include "include/types.hpp"
#include "include/memory.hpp"

float g_alpha = 0.1f;
float g_gamma = 0.9999f;
float g_epsilon = 1.0f;
float g_epsilon_decay = 0.99999f;
float g_epsilon_min = 0.00001f;
int g_total_episode = 2000000;
int step_per_episode = 4000;
int batch_size = 32;

float Q[STATE_COUNT][ACTION_COUNT];

inline int get_state_index(int req_size, int frag, int util, int hist, int free_blk, int pages, int cpu) {
    int idx = 0;
    idx = idx * REQUEST_SIZE_CLASS + req_size;
    idx = idx * FRAGMENTATION_LEVEL + frag;
    idx = idx * PAGE_UTILIZATION + util;
    idx = idx * ALLOCATION_HISTORY + hist;
    idx = idx * FREE_BLOCK_COUNT + free_blk;
    idx = idx * ACTIVE_PAGES + pages;
    idx = idx * CPU_LOAD + cpu;
    return idx;
}

int get_random_state() {
    int req_size = rand() % REQUEST_SIZE_CLASS;
    int frag = rand() % FRAGMENTATION_LEVEL;
    int util = rand() % PAGE_UTILIZATION;
    int hist = rand() % ALLOCATION_HISTORY;
    int free_blk = rand() % FREE_BLOCK_COUNT;
    int pages = rand() % ACTIVE_PAGES;
    int cpu = rand() % CPU_LOAD;
    return get_state_index(req_size, frag, util, hist, free_blk, pages, cpu);
}

float calculate_reward(float fragmentation, float latency_ns, bool compaction_used) {
    float reward = 0.0f;
    if (fragmentation <= 0.01f) reward += (float)REWARD_BIG;
    else if (fragmentation <= 0.02f) reward += (float)REWARD_MEDIUM;
    else if (fragmentation <= 0.05f) reward -= (float)PUNISHMENT_SMALL;
    else reward -= (float)PUNISHMENT_BIG;
    if (latency_ns < 15.0f) reward += (float)REWARD_BIG;
    else if (latency_ns <= 30.0f) reward += (float)REWARD_MEDIUM;
    else if (latency_ns <= 60.0f) reward -= (float)PUNISHMENT_MEDIUM;
    else reward -= (float)PUNISHMENT_BIG;
    if (compaction_used) reward -= (float)PUNISHMENT_SMALL;
    return reward;
}

SimulationState sim_state;

void init_simulation() {
    sim_state.req_size = rand() % REQUEST_SIZE_CLASS;
    sim_state.frag = rand() % FRAGMENTATION_LEVEL;
    sim_state.util = rand() % PAGE_UTILIZATION;
    sim_state.hist = rand() % ALLOCATION_HISTORY;
    sim_state.free_blk = rand() % FREE_BLOCK_COUNT;
    sim_state.pages = rand() % ACTIVE_PAGES;
    sim_state.cpu = rand() % CPU_LOAD;
    sim_state.fragmentation = 0.005f + ((float)rand() / RAND_MAX) * 0.045f;
    sim_state.latency_ns = 10.0f + ((float)rand() / RAND_MAX) * 50.0f;
    sim_state.compaction_used = false;
}

void simulate_action(int action, float *reward, int *next_state, size_t size) {
    float old_frag = sim_state.fragmentation;
    int req_size = 0;
    if (size <= 64) req_size = 0;
    else if (size <= 256) req_size = 1;
    else if (size <= 1024) req_size = 2;
    else req_size = 3;
    sim_state.req_size = req_size;

    switch (action) {
        case USE_EXISTING_PAGE:
            sim_state.free_blk = (sim_state.free_blk > 0) ? sim_state.free_blk - 1 : 0;
            sim_state.util = (sim_state.util + 1 > 9) ? 9 : sim_state.util + 1;
            sim_state.latency_ns = 12.0f + ((float)rand() / RAND_MAX) * 10.0f;
            sim_state.fragmentation *= 0.95f;
            sim_state.compaction_used = false;
            break;
        case ALLOCATE_NEW_PAGE:
            sim_state.pages = (sim_state.pages + 1 > 4) ? 4 : sim_state.pages + 1;
            sim_state.free_blk = 2 + (rand() % 3);
            sim_state.util = 1 + (rand() % 3);
            sim_state.latency_ns = 50.0f + ((float)rand() / RAND_MAX) * 50.0f;
            sim_state.fragmentation = 0.005f + ((float)rand() / RAND_MAX) * 0.015f;
            sim_state.compaction_used = false;
            break;
        case USE_HUGE_PAGE:
            sim_state.pages = (sim_state.pages + 1 > 4) ? 4 : sim_state.pages + 1;
            sim_state.free_blk = 10 + (rand() % 10);
            sim_state.util = 1 + (rand() % 2);
            sim_state.latency_ns = 80.0f + ((float)rand() / RAND_MAX) * 40.0f;
            sim_state.fragmentation = 0.001f + ((float)rand() / RAND_MAX) * 0.005f;
            sim_state.compaction_used = false;
            break;
        case TRIGGER_COMPACTION:
            sim_state.free_blk = 1 + (rand() % 3);
            sim_state.util = 4 + (rand() % 4);
            sim_state.latency_ns = 200.0f + ((float)rand() / RAND_MAX) * 100.0f;
            sim_state.fragmentation *= 0.3f;
            sim_state.compaction_used = true;
            break;
        case CHANGE_CORE_AFFINITY:
            sim_state.cpu = rand() % 3;
            sim_state.latency_ns = 10.0f + ((float)rand() / RAND_MAX) * 20.0f;
            sim_state.fragmentation = old_frag;
            sim_state.compaction_used = false;
            break;
        default: break;
    }
    sim_state.hist = (sim_state.hist + 1) % 5;
    *reward = calculate_reward(sim_state.fragmentation, sim_state.latency_ns, sim_state.compaction_used);
    *next_state = get_state_index(
        sim_state.req_size, sim_state.frag, sim_state.util,
        sim_state.hist, sim_state.free_blk, sim_state.pages, sim_state.cpu);
}

int select_action(int state, float epsilon) {
    if ((float)rand() / RAND_MAX < epsilon) return rand() % ACTION_COUNT;
    float* q_row = Q[state];
    int best = 0;
    float best_val = q_row[0];
    if (q_row[1] > best_val) { best = 1; best_val = q_row[1]; }
    if (q_row[2] > best_val) { best = 2; best_val = q_row[2]; }
    if (q_row[3] > best_val) { best = 3; best_val = q_row[3]; }
    if (q_row[4] > best_val) { best = 4; }
    return best;
}

void update_q_table(int state, int action, float reward, int next_state, float alpha, float gamma) {
    float max_next_q = Q[next_state][0];
    for (int a = 1; a < ACTION_COUNT; a++) {
        if (Q[next_state][a] > max_next_q) max_next_q = Q[next_state][a];
    }
    Q[state][action] += alpha * (reward + gamma * max_next_q - Q[state][action]);
}

void train_q_table() {
    float alpha = g_alpha, gamma = g_gamma, epsilon = g_epsilon;
    float epsilon_decay = g_epsilon_decay, epsilon_min = g_epsilon_min;

    memset(Q, 0, sizeof(Q));
    srand((unsigned int)time(NULL));

    for (int episode = 0; episode < g_total_episode; episode++) {
        init_simulation();
        int state = get_random_state();
        size_t size = 1 + (rand() % 1024);

        for (int step = 0; step < step_per_episode; step++) {
            int action = select_action(state, epsilon);
            float reward; int next_state;
            simulate_action(action, &reward, &next_state, size);
            update_q_table(state, action, reward, next_state, alpha, gamma);
            state = next_state;
        }

        epsilon *= epsilon_decay;
        if (epsilon < epsilon_min) epsilon = epsilon_min;

        if (episode % 1000 == 0) {
            printf("Episode %d: epsilon = %f\n", episode, epsilon);
        }
    }
    printf("Training complete. Q-Table ready.\n");
    save_q_table("qtable.bin");
}

int get_current_state(size_t size) {
    int req_size = 0;
    if (size <= 64) req_size = 0;
    else if (size <= 256) req_size = 1;
    else if (size <= 1024) req_size = 2;
    else req_size = 3;

    // page_count'i tek seferde oku
    int count = g_page_count.load(std::memory_order_relaxed);
    int page_count = (count >= ACTIVE_PAGES) ? ACTIVE_PAGES - 1 : count;

    // total_free'yi hesapla (tüm sayfaları dolaş)
    int total_free = 0;
    for (int i = 0; i < count; ++i) {
        page_t* page = g_page_pool[i].load(std::memory_order_relaxed);
        if (page) {
            total_free += page->free_slot_count.load(std::memory_order_relaxed);
        }
    }

    float avg_frag = g_avg_fragmentation.load(std::memory_order_relaxed);
    std::atomic_thread_fence(std::memory_order_acquire);

    int frag_level = (avg_frag < 0.05f) ? 0 : (avg_frag < 0.15f) ? 1 : 2;
    int util = (page_count > 0) ? (total_free / (page_count + 1)) / 10 : 0;
    if (util > 9) util = 9;
    int free_blk = (total_free > 100) ? 3 : (total_free > 10) ? 2 : (total_free > 0) ? 1 : 0;

    int cpu = 0;
    int hist = 0;
    return get_state_index(req_size, frag_level, util, hist, free_blk, page_count, cpu);
}

void save_q_table(const char* filename) {
    FILE* f = fopen(filename, "wb");
    fwrite(Q, sizeof(float), STATE_COUNT * ACTION_COUNT, f);
    fclose(f);
}

void load_q_table(const char* filename) {
    FILE* f = fopen(filename, "rb");
    if (f) {
        fread(Q, sizeof(float), STATE_COUNT * ACTION_COUNT, f);
        fclose(f);
    } else {
        memset(Q, 0, sizeof(Q));
    }
}