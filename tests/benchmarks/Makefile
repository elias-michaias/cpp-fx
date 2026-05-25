CXX      ?= g++-15
CXXFLAGS  = -std=c++23 -Wall -Wextra -O3

SRCS = $(wildcard b*.cpp)
BINS = $(SRCS:.cpp=)
ASMS = $(SRCS:.cpp=.s)

.PHONY: all asm run clean

all: $(BINS)

asm: $(ASMS)

$(BINS): %: %.cpp bench.hpp ../common.hpp ../../effects.hpp
	$(CXX) $(CXXFLAGS) -o $@ $<

# -fverbose-asm: annotates operands with source variable names / line refs
# -S:            emit assembly only (no object file)
$(ASMS): %.s: %.cpp bench.hpp ../common.hpp ../../effects.hpp
	$(CXX) $(CXXFLAGS) -S -fverbose-asm -o $@ $<

run: all
	@for t in $(BINS); do \
		./$$t; \
		echo; \
	done

clean:
	rm -f $(BINS) $(ASMS)
