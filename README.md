# NEMALLOC
### A custom experimental memory allocator with AI and SIMD support.

`nemalloc` is a research-oriented memory allocator that explores how machine learning (specifically reinforcement learning with Q-tables) and SIMD instructions can be combined to improve memory allocation performance and reduce fragmentation.

Note: This is an experimental project. It is not production-ready, but serves as a testing sandbox for AI-driven system optimizations.

## FEATURES

* AI-Assisted Allocation: Uses a Q-table (trained via reinforcement learning) to predict and select optimal allocation strategies based on runtime patterns.
* SIMD Optimizations: Leverages vectorized instructions for faster memory operations (copying, zeroing, etc.).
* Compaction: Includes a compaction mechanism to reduce fragmentation by defragmenting allocated memory regions.
* Shared Library: Can be preloaded (LD_PRELOAD) to replace malloc/free in existing applications without recompilation.
* Training Mode: Includes a training harness (qtable_training.cpp) to adapt the Q-table to specific workloads.

## REPOSITORY STRUCTURE
```
nemalloc/
│
├── source/                    # Core implementation
│   ├── include/               # Header files
│   │   ├── compaction.hpp
│   │   ├── helper.hpp
│   │   ├── memory.hpp
│   │   ├── nemalloc.hpp
│   │   ├── qtable.hpp
│   │   └── types.hpp
│   ├── compaction.cpp         # Memory compaction logic
│   ├── globals.cpp            # Global state and configuration
│   ├── main.cpp               # Standalone test/demo executable
│   ├── memory.cpp             # Core memory management (malloc/free)
│   ├── nemalloc.cpp           # Main allocator interface and AI integration
│   └── qtable_training.cpp   # Reinforcement learning training harness
├── .gitignore
├── LICENSE                    # License terms
├── Makefile                   # Build system
├── qtable.bin                 # Pre-trained Q-table
└── README.md                  # Project documentation
```

## QUICK START

1. Build from Source:
git clone [https://github.com/herenturker/nemalloc.git](https://github.com/herenturker/nemalloc.git)
cd nemalloc
make so
Output:
* libnemalloc.so (Shared library)

2. Preload into Existing Programs (LD_PRELOAD):
LD_PRELOAD=/path/to/libnemalloc.so ./your_program
Example with ls:
LD_PRELOAD=./libnemalloc.so ls -la
3. Run Test Suite:
./nemalloc_test
4. Train Custom Q-Table:
./main
The Q-Table will be automatically trained if no qtable.bin is present.

## C++ USAGE EXAMPLE
Please use `-lnemalloc` when linking.
```
#include "nemalloc.hpp"

int main()
{
  handle_t h = nemalloc(100);
  void* p = get_ptr(h);
  nefree(h);
return 0;
}
```

### Requirements:

* C++17 compiler
* GNU Make
* Linux x86_64 (AVX2 recommended)


### LICENSE & ACKNOWLEDGMENTS

Refer to the LICENSE file in the repository for terms. Inspired by ML-driven systems research.
