#ifndef _QTABLE_HPP
#define _QTABLE_HPP

#define REWARD_BIG 1000
#define REWARD_MEDIUM 300
#define REWARD_SMALL 100
#define REWARD_TINY 50

#define PUNISHMENT_BIG -1000
#define PUNISHMENT_MEDIUM -250
#define PUNISHMENT_SMALL -50

#define REQUEST_SIZE_CLASS  4
#define FRAGMENTATION_LEVEL  3
#define PAGE_UTILIZATION  10
#define ALLOCATION_HISTORY  5
#define FREE_BLOCK_COUNT  4
#define ACTIVE_PAGES  5
#define CPU_LOAD  3

#define STATE_COUNT (REQUEST_SIZE_CLASS * FRAGMENTATION_LEVEL * PAGE_UTILIZATION * ALLOCATION_HISTORY * FREE_BLOCK_COUNT * ACTIVE_PAGES * CPU_LOAD)
#define ACTION_COUNT 5

#define MAX_FRAGMANTATION 0.01f

extern float g_alpha;
extern float g_gamma;
extern float g_epsilon;
extern float g_epsilon_decay;
extern float g_epsilon_min;
extern int g_total_episode;
extern int step_per_episode;
extern int batch_size;

extern float Q[STATE_COUNT][ACTION_COUNT];

enum Action {
    USE_EXISTING_PAGE,
    ALLOCATE_NEW_PAGE,
    USE_HUGE_PAGE,
    TRIGGER_COMPACTION,
    CHANGE_CORE_AFFINITY
};

typedef struct {
    int req_size;
    int frag;
    int util;
    int hist;
    int free_blk;
    int pages;
    int cpu;
    float fragmentation;
    float latency_ns;
    bool compaction_used;
} SimulationState;

inline int get_state_index(int req_size, int frag, int util, int hist, int free_blk, int pages, int cpu);
int select_action(int state, float epsilon);
void update_q_table(int state, int action, float reward, int next_state, float alpha, float gamma);
void train_q_table();
void save_q_table(const char* filename);
void simulate_action(int action, float *reward, int *next_state, size_t size);
void init_simulation();
float calculate_reward(float fragmentation, float latency_ns, bool compaction_used);
int get_random_state();
void load_q_table(const char* filename);
int get_current_state(size_t size);

#endif