CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -Wpedantic -Iinclude
TARGET := build/game-of-life

.PHONY: all run clean

all: $(TARGET)

$(TARGET): src/main.cpp include/game.h include/grid_info.h include/neighbours_info.h
	mkdir -p build
	$(CXX) $(CXXFLAGS) src/main.cpp -o $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -rf build
