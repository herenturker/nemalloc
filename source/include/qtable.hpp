#ifndef _QTABLE_HPP
#define _QTABLE_HPP

#define REWARD_BIG 1000        // speed and compaction is good
#define REWARD_MEDIUM 200      // compaction is used great
#define REWARD_SMALL 100        // compaction is good but speed is bad
#define REWARD_TINY 50

#define PUNISHMENT_BIG -500    // neither speed nor compaction are good
#define PUNISHMENT_MEDIUM -100 // unnecessary compaction
#define PUNISHMENT_SMALL -50   // speed is good but compaction is bad

// STATES
#define REQUEST_SIZE_CLASS  4  // TINY, SMALL, MEDIUM, LARGE
#define FRAGMENTATION_LEVEL  3 // LOW, MEDIUM, HIGH
#define PAGE_UTILIZATION  10 // 0-9
#define ALLOCATION_HISTORY  5 // LAST 5
#define FREE_BLOCK_COUNT  4 // 0, 1-10, 11-100, >100
#define ACTIVE_PAGES  5 // 1, 2-5, 6-10, 11-20, >20
#define CPU_LOAD  3 // LOW, MEDIUM, HIGH

#define STATE_COUNT (REQUEST_SIZE_CLASS * FRAGMENTATION_LEVEL * PAGE_UTILIZATION * ALLOCATION_HISTORY * FREE_BLOCK_COUNT * ACTIVE_PAGES * CPU_LOAD)
#define ACTION_COUNT 5

#define MAX_FRAGMANTATION 0.01f // 1%

// Parameter sensitivity
float g_alpha = 0.1f;
float g_gamma = 0.9999f;
float g_epsilon = 1.0f;
float g_epsilon_decay = 0.99995f;
float g_epsilon_min = 0.0001f;
int g_total_episode = 1000000;
int step_per_episode = 4000;
int batch_size = 32;

/* ACTIONS */
enum Action
{
    USE_EXISTING_PAGE,
    ALLOCATE_NEW_PAGE,
    USE_HUGE_PAGE,
    TRIGGER_COMPACTION,
    CHANGE_CORE_AFFINITY
};

float Q[STATE_COUNT][ACTION_COUNT];

#endif // _QTABLE_HPP