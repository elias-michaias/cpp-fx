#include "common.hpp"

#include <cassert>
#include <type_traits>


auto pure_int() -> Fx<int> { co_return 42; }

auto ask_once() -> Row<Ask>::Fx<std::string> {
  auto name = perform(Ask{.prompt = "name"});
  co_return "hello, " + name;
}

auto log_and_ask() -> IO::Fx<int> {
  perform(Log{.message = "starting"});
  perform(Ask{.prompt = "x"});
  co_return 1;
}


struct FixedAsk : Handler<Ask> {
  void handle(Ask, auto r) { r("world"); }
};

struct NullLog : Handler<Log> {
  void handle(Log, auto r) { r({}); }
};


int main() {

  // 1. frame_size_v is a sensible non-zero size
  {
    using MyFx = Fx<int, Ask>;
    constexpr std::size_t sz = fx::frame_size_v<MyFx>;
    static_assert(sz > 0);
    static_assert(sz == sizeof(MyFx::promise_type) + sizeof(fx::MemResource *));
    std::cout << "1. frame_size_v<Fx<int,Ask>> = " << sz << " bytes\n";
  }

  // 2. StackFx is non-movable and non-copyable
  {
    using MyFx = Fx<int>;
    static_assert(!std::is_copy_constructible_v<fx::StackFx<MyFx>>);
    static_assert(!std::is_move_constructible_v<fx::StackFx<MyFx>>);
    std::cout << "2. StackFx is non-copyable and non-movable\n";
  }

  // 3. make_stack_fx — pure coroutine, no effects
  {
    auto result = fx::make_stack_fx(pure_int).run();
    assert(result == 42);
    std::cout << "3. make_stack_fx pure: " << result << "\n";
  }

  // 4. make_stack_fx with a handler
  {
    auto result = fx::make_stack_fx(ask_once).run(FixedAsk{});
    assert(result == "hello, world");
    std::cout << "4. make_stack_fx with handler: " << result << "\n";
  }

  // 5. CTAD deduction guide — fx::StackFx sfx{factory}
  {
    fx::StackFx sfx{ask_once};
    auto result = sfx.run(FixedAsk{});
    assert(result == "hello, world");
    std::cout << "5. StackFx CTAD: " << result << "\n";
  }

  // 6. StackFx + no_heap guard: frame must NOT reach the heap
  {
    fx::no_heap guard;
    auto result = fx::make_stack_fx(ask_once).run(FixedAsk{});
    assert(result == "hello, world");
    std::cout << "6. StackFx + no_heap guard passed\n";
  }

  // 7. frame_size_v used for exact-fit ScopedFreeList
  {
    using MyFx = Row<Ask>::Fx<std::string>;
    fx::ScopedFreeList<fx::frame_size_v<MyFx>, 1> pool;
    fx::no_heap guard;
    auto result = ask_once().run(FixedAsk{});
    assert(result == "hello, world");
    std::cout << "7. exact-fit ScopedFreeList + no_heap passed\n";
  }

  // 8. StackFx with multiple effects
  {
    auto result =
        fx::make_stack_fx(log_and_ask).run(NullLog{}, FixedAsk{});
    assert(result == 1);
    std::cout << "8. StackFx multi-effect: " << result << "\n";
  }

  std::cout << "All tests passed.\n";
}
