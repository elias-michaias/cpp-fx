CXX      ?= g++
CXXFLAGS  = -std=c++23 -Wall -Wextra -O2

SRCS = $(wildcard t*.cpp)
BINS = $(SRCS:.cpp=)

.PHONY: all run check-invalid bench clean

all: $(BINS)

$(BINS): %: %.cpp common.hpp ../effects.hpp
	$(CXX) $(CXXFLAGS) -o $@ $<

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

bench:
	@$(MAKE) -C benchmarks run

clean:
	rm -f $(BINS)
	@$(MAKE) -C benchmarks clean
