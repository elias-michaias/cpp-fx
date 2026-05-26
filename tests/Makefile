CXX       ?= g++
CXXFLAGS   = -std=c++23 -Wall -Wextra -O2
BENCH_CXX  = $(CXX)
BENCH_FLAGS = -std=c++23 -Wall -Wextra -O3

SRCS = $(wildcard t*.cpp)
BINS = $(SRCS:.cpp=)

.PHONY: all run check-invalid bench clean

all: $(BINS)

$(BINS): %: %.cpp common.hpp ../effects.hpp
	$(CXX) $(CXXFLAGS) -o $@ $<

benchmarks/b1: benchmarks/b1_dispatch.cpp benchmarks/bench.hpp common.hpp ../effects.hpp
	$(BENCH_CXX) $(BENCH_FLAGS) -o $@ $<
benchmarks/b2: benchmarks/b2_batch.cpp benchmarks/bench.hpp common.hpp ../effects.hpp
	$(BENCH_CXX) $(BENCH_FLAGS) -o $@ $<
benchmarks/b3: benchmarks/b3_error_handling.cpp benchmarks/bench.hpp common.hpp ../effects.hpp
	$(BENCH_CXX) $(BENCH_FLAGS) -o $@ $<
benchmarks/b4: benchmarks/b4_generators.cpp benchmarks/bench.hpp common.hpp ../effects.hpp
	$(BENCH_CXX) $(BENCH_FLAGS) -o $@ $<
benchmarks/b5: benchmarks/b5_propagation.cpp benchmarks/bench.hpp common.hpp ../effects.hpp
	$(BENCH_CXX) $(BENCH_FLAGS) -o $@ $<
benchmarks/b6: benchmarks/b6_allocators.cpp benchmarks/bench.hpp common.hpp ../effects.hpp
	$(BENCH_CXX) $(BENCH_FLAGS) -o $@ $<

run: all
	@for t in $(BINS); do \
		printf '\033[1m--- %s ---\033[0m\n' "$$t"; \
		./$$t; \
		echo; \
	done

# Each file in invalid/ must fail to compile.  Prints a summary.
check-invalid:
	@echo "Checking invalid/ (each should be rejected by the compiler)..."
	@pass=0; fail=0; \
	for f in invalid/*.cpp; do \
		if $(CXX) $(CXXFLAGS) -c "$$f" -o /dev/null 2>/dev/null; then \
			printf '  UNEXPECTED OK  %s\n' "$$f"; fail=$$((fail+1)); \
		else \
			printf '  rejected (ok)  %s\n' "$$f"; pass=$$((pass+1)); \
		fi; \
	done; \
	echo "$$pass correctly rejected, $$fail unexpected successes."

bench: benchmarks/b1 benchmarks/b2 benchmarks/b3 benchmarks/b4 benchmarks/b5 benchmarks/b6
	@for b in benchmarks/b1 benchmarks/b2 benchmarks/b3 benchmarks/b4 benchmarks/b5 benchmarks/b6; do \
		printf '\033[1m--- %s ---\033[0m\n' "$$b"; \
		./$$b; \
		echo; \
	done

clean:
	rm -f $(BINS) benchmarks/b1 benchmarks/b2 benchmarks/b3 benchmarks/b4 benchmarks/b5 benchmarks/b6
