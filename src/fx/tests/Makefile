CXX      = g++-15
CXXFLAGS  = -std=c++23 -Wall -Wextra -O2

SRCS = $(wildcard t*.cpp)
BINS = $(SRCS:.cpp=)

.PHONY: all run clean

all: $(BINS)

$(BINS): %: %.cpp ../../fx.hpp ../../../effects.hpp
	$(CXX) $(CXXFLAGS) -o $@ $<

run: all
	@for t in $(BINS); do \
		printf '\033[1m--- %s ---\033[0m\n' "$$t"; \
		./$$t; \
		echo; \
	done

clean:
	rm -f $(BINS)
