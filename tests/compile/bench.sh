#!/usr/bin/env bash
# Compile-time benchmark runner.
# Usage: ./bench.sh [REPS=3] [CXX=g++] [CXXFLAGS="-std=c++23 -O2"]

set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"

CXX="${CXX:-g++}"
BASE_FLAGS="${CXXFLAGS:--std=c++23 -O2}"
REPS="${REPS:-3}"
INCLUDES="-I../.."
COMPILE_FLAGS="${BASE_FLAGS} ${INCLUDES} -c -o /dev/null"

# Columns: source file, extra flags, display label
SRCS=(
  "c0_empty.cpp"
  "c1_include.cpp"
  "c2_define.cpp"
  "c3_coroutine.cpp"
  "c4_run.cpp"
  "c5_wide_row.cpp"
)
XFLAGS=("" "" "" "" "" "")
LABELS=(
  "c0  empty (baseline)"
  "c1  #include effects.hpp"
  "c2  + 3 effect types"
  "c3  + Fx coroutine (no .run)"
  "c4  + .run() / ScopedHandler"
  "c5  wide row (4 effects)"
)

# Extra scenarios (reuse existing files with different flags)
EXTRA_SRCS=("c4_run.cpp" "c4_run.cpp")
EXTRA_FLAGS=("-DFX_NO_ALLOCATOR" "-DFX_STD_ALLOCATOR")
EXTRA_LABELS=("c4  .run() -DFX_NO_ALLOCATOR" "c4  .run() -DFX_STD_ALLOCATOR")

time_compile() {
  local file="$1" flags="$2"
  local total_ms=0 min_ms=999999 ms t1 t2
  for ((i = 0; i < REPS; i++)); do
    t1=$(date +%s%N)
    # shellcheck disable=SC2086
    ${CXX} ${COMPILE_FLAGS} ${flags} "${file}" 2>/dev/null
    t2=$(date +%s%N)
    ms=$(( (t2 - t1) / 1000000 ))
    total_ms=$(( total_ms + ms ))
    (( ms < min_ms )) && min_ms=$ms
  done
  local avg_ms=$(( total_ms / REPS ))
  echo "${min_ms} ${avg_ms}"
}

header="$(${CXX} --version 2>&1 | head -1)"
echo "=== Compile-time benchmarks (reps=${REPS}, ${BASE_FLAGS}) ==="
echo "Compiler: ${header}"
echo ""
printf "  %-34s  %8s  %8s  %9s\n" "Scenario" "min (ms)" "avg (ms)" "Δ min"
printf "  %-34s  %8s  %8s  %9s\n" "$(printf '%0.s-' {1..34})" "--------" "--------" "---------"

prev_min=0
n=${#SRCS[@]}
for ((idx = 0; idx < n; idx++)); do
  read -r min avg <<< "$(time_compile "${SRCS[$idx]}" "${XFLAGS[$idx]}")"
  if (( prev_min == 0 )); then
    delta="–"
  else
    delta=$(( min - prev_min ))
    (( delta >= 0 )) && delta="+${delta}ms" || delta="${delta}ms"
  fi
  printf "  %-34s  %8d  %8d  %9s\n" "${LABELS[$idx]}" "${min}" "${avg}" "${delta}"
  prev_min=$min
done

echo ""
echo "  — flag variants —"
for ((idx = 0; idx < ${#EXTRA_SRCS[@]}; idx++)); do
  read -r min avg <<< "$(time_compile "${EXTRA_SRCS[$idx]}" "${EXTRA_FLAGS[$idx]}")"
  printf "  %-34s  %8d  %8d\n" "${EXTRA_LABELS[$idx]}" "${min}" "${avg}"
done
echo ""
