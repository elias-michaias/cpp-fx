// invalid/04_missing_propagation.cpp
//
// EXPECTED ERROR — at the co_await inner line:
//
//   error: use of deleted function
//   'fx::detail::FxAwaitable<...> promise_type::await_transform(IO::Fx<int>)'
//
//   IDE squiggle: co_await Fx<...>: inner Fx performs effects not declared
//   here.  Fix: add the missing effect(s) to the return type:
//   Row<...,E>::Fx<T>.
//
// Cause: inner_comp() returns IO::Fx<int> = Fx<int, Ask, Log>.
// The outer function declares only Ask::Fx<int> = Fx<int, Ask>.
// Log is performed by inner_comp but is not declared in the outer type —
// the await_transform overload for this case is = delete.
//
// Fix: change the outer return type to IO::Fx<int> so Log is also declared.

#include "../common.hpp"

auto inner_comp() -> IO::Fx<int> {
  perform(Log{.message = "inner log"});
  co_return std::stoi(perform(Ask{.prompt = "x: "}));
}

// outer declares only Ask, but inner_comp also performs Log.
auto outer_comp() -> Row<Ask>::Fx<int> {
  co_return co_await inner_comp(); // <-- error: Log not declared in
                                   // Ask::Fx<int>
}

int main() {}
