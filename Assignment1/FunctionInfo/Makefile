# CXX := clang++
CXXFLAGS := $(shell llvm-config --cxxflags) -rdynamic -g -std=c++17 -fPIC

all: FunctionInfo.so

FunctionInfo.so: FunctionInfo.o
	$(CXX) -dylib -shared $^ -o $@

.PHONY: clean
clean:
	rm -f *.so *.o ./tests/*.ll ./tests/*.bc
