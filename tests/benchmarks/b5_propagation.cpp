

#include "../common.hpp"
#include "bench.hpp"


struct Ping : Effect<Ping> {
  using result_type = int;
};


static auto ping_d1() -> Row<Ping>::Fx<int> { co_return perform(Ping{}); }
static auto ping_d2() -> Row<Ping>::Fx<int> { co_return co_await ping_d1(); }
static auto ping_d3() -> Row<Ping>::Fx<int> { co_return co_await ping_d2(); }
static auto ping_d4() -> Row<Ping>::Fx<int> { co_return co_await ping_d3(); }
static auto ping_d5() -> Row<Ping>::Fx<int> { co_return co_await ping_d4(); }
static auto ping_d8() -> Row<Ping>::Fx<int> {
  co_return co_await ping_d5() + co_await ping_d3();
}


[[gnu::noinline]] static int direct_d1() { return 1; }
[[gnu::noinline]] static int direct_d2() { return direct_d1(); }
[[gnu::noinline]] static int direct_d3() { return direct_d2(); }
[[gnu::noinline]] static int direct_d4() { return direct_d3(); }
[[gnu::noinline]] static int direct_d5() { return direct_d4(); }
[[gnu::noinline]] static int direct_d8() { return direct_d5() + direct_d3(); }


struct PingHandler : Handler<Ping> {
  void handle(Ping, auto r) { r(1); }
};


int main() {
  constexpr std::size_t N = 500'000;

  section("b5: propagation chain depth scaling  (N=" + std::to_string(N) +
          " per cell)");
  std::cout
      << "  Each iteration traverses the full chain once.\n"
      << "  Direct: plain non-inlined function calls at equivalent depth.\n"
      << "  Fx:     co_await chain — each level allocates one coroutine "
         "frame.\n\n";

  std::cout << "  depth 1:\n";
  {
    long long sink = 0;
    print_result(bench("    direct", N, [&] { sink += direct_d1(); }));
    print_result(
        bench("    fx", N, [&] { sink += ping_d1().run(PingHandler{}); }));
    do_not_optimize(sink);
  }

  std::cout << "  depth 3:\n";
  {
    long long sink = 0;
    print_result(bench("    direct", N, [&] { sink += direct_d3(); }));
    print_result(
        bench("    fx", N, [&] { sink += ping_d3().run(PingHandler{}); }));
    do_not_optimize(sink);
  }

  std::cout << "  depth 5:\n";
  {
    long long sink = 0;
    print_result(bench("    direct", N, [&] { sink += direct_d5(); }));
    print_result(
        bench("    fx", N, [&] { sink += ping_d5().run(PingHandler{}); }));
    do_not_optimize(sink);
  }

  std::cout << "  depth 8 (two branches):\n";
  {
    long long sink = 0;
    print_result(bench("    direct", N, [&] { sink += direct_d8(); }));
    print_result(
        bench("    fx", N, [&] { sink += ping_d8().run(PingHandler{}); }));
    do_not_optimize(sink);
  }

  std::cout
      << "\nNote: the Fx/direct ratio stays roughly constant across depths\n"
      << "      because each extra level adds the same fixed per-frame cost.\n"
      << "      A pool allocator for coroutine frames would flatten the "
         "curve.\n";
  return 0;
}
