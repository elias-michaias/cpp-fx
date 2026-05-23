CXX      ?= g++
CXXFLAGS  = -std=c++23 -Wall -Wextra -O3

SRCS = $(wildcard b*.cpp)
BINS = $(SRCS:.cpp=)

.PHONY: all run clean

all: $(BINS)

$(BINS): %: %.cpp bench.hpp ../common.hpp ../../effects.hpp
	$(CXX) $(CXXFLAGS) -o $@ $<

run: all
	@for t in $(BINS); do \
		./$$t; \
		echo; \
	done

clean:
	rm -f $(BINS)
