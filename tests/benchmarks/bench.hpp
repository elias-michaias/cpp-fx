#pragma once


#include <chrono>
#include <cstddef>
#include <iomanip>
#include <iostream>
#include <string>


template <typename T> inline void do_not_optimize(T const &val) {
  asm volatile("" : : "r,m"(val) : "memory");
}
inline void do_not_optimize(void *) {}

struct BenchResult {
  std::string name;
  std::size_t iters;
  double total_ns;
  double ns_per_iter() const { return total_ns / static_cast<double>(iters); }
};


template <typename F>
BenchResult bench(std::string name, std::size_t iters, F &&fn,
                  std::size_t warmup = 3) {
  for (std::size_t i = 0; i < warmup; ++i)
    fn();

  auto start = std::chrono::high_resolution_clock::now();
  for (std::size_t i = 0; i < iters; ++i)
    fn();
  auto end = std::chrono::high_resolution_clock::now();

  double ns = std::chrono::duration<double, std::nano>(end - start).count();
  return {std::move(name), iters, ns};
}


inline void print_result(const BenchResult &r) {
  double ns = r.ns_per_iter();
  std::cout << "  " << std::setw(44) << std::left << r.name << " "
            << std::setw(10) << std::right << std::fixed << std::setprecision(2)
            << ns << " ns/iter\n";
}


inline void section(std::string_view title) {
  std::cout << "\n=== " << title << " ===\n";
}
