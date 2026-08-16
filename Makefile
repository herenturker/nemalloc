CXX = g++
CXXFLAGS = -std=c++17 -O3 -march=native -mavx2 -mfma -fPIC -D__AVX2__ -pthread
WARNFLAGS = -Wall -Wextra -Wpedantic -Wshadow -Wconversion -Wsign-conversion -Wcast-align -Wformat=2 -Wnull-dereference -Wdouble-promotion -Wformat-overflow=2 -Wformat-truncation=2 -Wstringop-overflow=4 -Wno-unused-parameter
INCLUDES = -Iinclude
LDFLAGS = -pthread -lrt

TARGET = build/nemalloc
SOURCES = source/main.cpp source/memory.cpp source/nemalloc.cpp source/qtable_training.cpp source/globals.cpp source/compaction.cpp
OBJECTS = $(SOURCES:.cpp=.o)
BUILD_DIR = build

all: $(BUILD_DIR) $(TARGET)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(OBJECTS) -o $(TARGET)

so: $(OBJECTS)
	$(CXX) $(CXXFLAGS) -shared $(LDFLAGS) $(OBJECTS) -o libnemalloc.so

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(WARNFLAGS) $(INCLUDES) -c $< -o $@

# benchmark:
# g++ -std=c++17 -Iinclude -O3 -mavx2 -mfma -pthread -o benchmark benchmark.cpp -L. -lnemalloc -Wl,-rpath,.

# safe_bench:
#	g++ -std=c++17 -Iinclude -O3 -mavx2 -mfma -pthread -o safe_bench safe_bench.cpp -L. -lnemalloc -Wl,-rpath,.

analyze:
	perf record ./safe_bench \
	perf report

asm:
	objdump -d -M intel -S libnemalloc.so > libnemalloc.asm

# Temizlik
clean:
	rm -f $(OBJECTS) $(TARGET) libnemalloc.so

distclean: clean
	rm -f qtable.bin

run: $(TARGET)
	./$(TARGET)

.PHONY: all clean distclean run so

# LD_PRELOAD=./libnemalloc.so ./test_program