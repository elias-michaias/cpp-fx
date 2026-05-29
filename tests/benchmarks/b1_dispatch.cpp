

#include "../common.hpp"
#include "bench.hpp"

#include <functional>
#include <memory>


struct Increment : Effect<Increment> {
  using result_type = int;
  int value;
};

struct IncrementHandler : Handler<Increment> {
  void handle(Increment e, auto r) { r(e.value + 1); }
};


[[gnu::noinline]] static int direct_inc(int x) { return x + 1; }


static auto fx_inc(int x) -> Row<Increment>::Fx<int> {
  co_return perform(Increment{.value = x});
}


int main() {
  constexpr std::size_t N = 1'000'000;

  section("b1: per-invocation dispatch overhead  (N = " + std::to_string(N) +
          " iterations)");
  std::cout << "  Each iteration dispatches once and returns an int.\n"
            << "  Fx: one coroutine-frame alloc per iteration; zero "
               "per-perform allocs.\n\n";


  {
    int sink = 0;
    print_result(
        bench("direct non-virtual call", N, [&] { sink = direct_inc(sink); }));
    do_not_optimize(sink);
  }


  {
    std::function<int(int)> fn = [](int x) { return x + 1; };
    int sink = 0;
    print_result(bench("std::function", N, [&] { sink = fn(sink); }));
    do_not_optimize(sink);
  }


  {
    struct Base {
      virtual int inc(int x) = 0;
      virtual ~Base() = default;
    };
    struct Impl : Base {
      [[gnu::noinline]] int inc(int x) override { return x + 1; }
    };
    std::unique_ptr<Base> obj = std::make_unique<Impl>();
    int sink = 0;
    print_result(bench("virtual dispatch", N, [&] { sink = obj->inc(sink); }));
    do_not_optimize(sink);
  }


  {
    int sink = 0;
    print_result(bench("fx::perform (1 perform / coroutine)", N,
                       [&] { sink = fx_inc(sink).run(IncrementHandler{}); }));
    do_not_optimize(sink);
  }

  std::cout
      << "\nNote: perform() overhead is dominated by the coroutine frame "
         "alloc.\n"
      << "      Use b2_batch to see the amortised cost across many performs.\n";
  return 0;
}
