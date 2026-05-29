CXX      ?= g++
CXXFLAGS ?= -std=c++23 -O2
REPS     ?= 3

SRCS := c0_empty.cpp c1_include.cpp c2_define.cpp \
        c3_coroutine.cpp c4_run.cpp c5_wide_row.cpp

TRACE_DIR := /tmp

.PHONY: bench report report-all clean

bench:
	@bash bench.sh

# Usage: make report FILE=c4_run.cpp
report:
	$(eval FILE ?= c4_run.cpp)
	$(eval TRACE := $(TRACE_DIR)/fx_trace_$(basename $(FILE)).json)
	@if ! command -v clang++ > /dev/null 2>&1; then \
		echo "error: clang++ not found (required for -ftime-trace)"; exit 1; fi
	clang++ $(CXXFLAGS) -I../.. -c $(FILE) -o /dev/null \
	        -ftime-trace=$(TRACE) 2>/dev/null
	@python3 parse_trace.py $(TRACE)

report-all:
	@if ! command -v clang++ > /dev/null 2>&1; then \
		echo "error: clang++ not found (required for -ftime-trace)"; exit 1; fi
	@for f in $(SRCS); do \
		trace=$(TRACE_DIR)/fx_trace_$$(basename $$f .cpp).json; \
		clang++ $(CXXFLAGS) -I../.. -c $$f -o /dev/null \
		        -ftime-trace=$$trace 2>/dev/null; \
		python3 parse_trace.py $$trace --brief; \
	done

clean:
	@rm -f $(TRACE_DIR)/fx_trace_*.json
