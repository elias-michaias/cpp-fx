// b4_generators.cpp — value generation and collection
//
// Compares strategies for lazily producing a sequence of N integers and
// collecting them into a vector:
//
//   1. Direct push_back loop           — baseline; no abstraction
//   2. Inlined callback (template)     — zero-overhead abstraction
//   3. std::function callback          — type-erased callback
//   4. Hand-rolled C++23 generator     — co_yield, no Fx overhead
//   5. Emit<int> effect (fx)           — perform per value, full library
//
// The gap between (4) and (5) shows the extra cost introduced by the fx
// machinery (handler stack walk + resume) over bare co_yield.
// The gap between (1) and (4) shows the raw co_yield / coroutine cost.

#include "../common.hpp"
#include "bench.hpp"

#include <coroutine>
#include <functional>
#include <numeric>
#include <vector>

// ---- Hand-rolled coroutine generator (no Fx) -------------------------------
// A minimal generator that supports co_yield; used as a direct comparison
// to Emit<int> without any fx machinery.

template <typename T> struct Generator {
  struct promise_type {
    T current{};
    Generator get_return_object() noexcept {
      return Generator{Handle::from_promise(*this)};
    }
    std::suspend_always initial_suspend() noexcept { return {}; }
    std::suspend_always final_suspend() noexcept { return {}; }
    std::suspend_always yield_value(T v) noexcept {
      current = v;
      return {};
    }
    void return_void() noexcept {}
    void unhandled_exception() { std::terminate(); }
  };
  using Handle = std::coroutine_handle<promise_type>;
  Handle h;
  explicit Generator(Handle h_) noexcept : h(h_) {}
  Generator(Generator &&o) noexcept : h(std::exchange(o.h, {})) {}
  Generator(const Generator &) = delete;
  ~Generator() { if (h) h.destroy(); }
  bool next() { h.resume(); return !h.done(); }
  T value() const { return h.promise().current; }
};

static Generator<int> raw_range(int n) {
  for (int i = 0; i < n; ++i) co_yield i;
}

// ---- Fx Emit variant -------------------------------------------------------

static auto fx_range(int n) -> Emit<int>::Fx<void> {
  for (int i = 0; i < n; ++i)
    perform(Emit<int>{.value = i});
  co_return;
}

// ---- named handler: collects emitted ints into an output vector ------------

struct CollectInts : Emit<int>::Handler {
  std::vector<int> &out;
  void handle(Emit<int> e, auto r) { out.push_back(e.value); r({}); }
};

// ---- main ------------------------------------------------------------------

int main() {
  constexpr int N = 5'000;
  constexpr std::size_t REPS = 2'000;

  section("b4: generators / collection  (N=" + std::to_string(N) +
          ", reps=" + std::to_string(REPS) + ")");
  std::cout
      << "  Each iteration generates N integers and collects them into a vector.\n\n";

  // 1. Direct push_back — absolute baseline
  {
    long long sink = 0;
    print_result(bench("direct push_back loop", REPS, [&] {
      std::vector<int> v;
      v.reserve(N);
      for (int i = 0; i < N; ++i) v.push_back(i);
      sink += v.back();
    }));
    do_not_optimize(sink);
  }

  // 2. Template callback (inlined — should match push_back)
  {
    long long sink = 0;
    auto collect = [&](auto emit_fn) {
      std::vector<int> v;
      v.reserve(N);
      for (int i = 0; i < N; ++i) emit_fn(i);
      sink += v.back(); // keep reference alive
      return v;
    };
    print_result(bench("template callback (inlined)", REPS, [&] {
      std::vector<int> v;
      v.reserve(N);
      collect([&](int x) { v.push_back(x); });
    }));
    do_not_optimize(sink);
  }

  // 3. std::function callback
  {
    long long sink = 0;
    print_result(bench("std::function callback", REPS, [&] {
      std::vector<int> v;
      v.reserve(N);
      std::function<void(int)> emit = [&](int x) { v.push_back(x); };
      for (int i = 0; i < N; ++i) emit(i);
      sink += v.back();
    }));
    do_not_optimize(sink);
  }

  // 4. Raw coroutine generator (co_yield, no Fx)
  {
    long long sink = 0;
    print_result(bench("raw coroutine generator (co_yield)", REPS, [&] {
      std::vector<int> v;
      v.reserve(N);
      auto gen = raw_range(N);
      while (gen.next()) v.push_back(gen.value());
      sink += v.back();
    }));
    do_not_optimize(sink);
  }

  // 5. Emit<int> effect (full fx machinery) — named handler struct
  {
    long long sink = 0;
    print_result(bench("Emit<int> effect (fx)", REPS, [&] {
      std::vector<int> v;
      v.reserve(N);
      fx_range(N).run(CollectInts{.out = v});
      sink += v.back();
    }));
    do_not_optimize(sink);
  }

  std::cout
      << "\nNotes:\n"
      << "  raw generator ≈ Emit<int>: both suspend/resume per value.\n"
      << "  Emit<int> adds handler-stack walk + resume per yield (zero extra alloc).\n"
      << "  The gap vs callback = coroutine overhead.\n"
      << "  Emit<int> advantage: producer and consumer are fully decoupled;\n"
      << "  handlers are swappable without changing the producer.\n";
  return 0;
}
