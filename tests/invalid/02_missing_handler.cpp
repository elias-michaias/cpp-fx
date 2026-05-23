// invalid/02_missing_handler.cpp
//
// EXPECTED ERROR — at the .run(StdoutLog{}) line:
//
//   error: static assertion failed:
//   fx::run -- no handler for effect E (1st template arg).
//   ...
//   In instantiation of 'void fx::detail::assert_handled<Ask, StdoutLog>()':
//
// The template arguments name the missing effect (Ask) and the provided
// handler (StdoutLog) so the gap is immediately visible.
//
// Cause: greet() declares IO::Fx<string> = Fx<string, Ask, Log>.
// StdoutLog handles Log but not Ask — Ask has no handler.
//
// Fix: also pass an Ask handler, e.g. greet().run(StdoutLog{}, some_ask_handler).

#include "../common.hpp"

auto greet() -> IO::Fx<std::string> {
  perform(Log{.message = "hi"});
  co_return perform(Ask{.prompt = "Name: "});
}

int main() {
  greet().run(StdoutLog{});  // <-- error: Ask is not handled
}
