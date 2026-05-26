// invalid/06_incomplete_composite_handler.cpp
//
// EXPECTED ERROR — at the .run(PartialIO{}) call:
//
//   error: static assertion failed:
//   fx::run -- no handler for effect E (1st template arg).
//
// Cause: greet() declares IO::Fx<string> = Fx<string, Ask, Log>.
// PartialIO is declared as IO::Handler but only provides
// handle(Ask, ...) — missing handle(Log, ...).
//
// VALIDATE_HANDLER(PartialIO) would catch this at definition time;
// .run() catches it at the call site when VALIDATE_HANDLER is omitted.
//
// Fix: add handle(Log, ...) to PartialIO, or use VALIDATE_HANDLER to
// get the error at struct definition rather than use site.

#include "../common.hpp"

auto greet() -> IO::Fx<std::string> {
  perform(Log{.message = "hi"});
  co_return perform(Ask{.prompt = "Name: "});
}

struct PartialIO : Handler<IO> {
  void handle(Ask, auto r) { r(std::string{"x"}); }
  // missing: void handle(Log, auto r) { r({}); }
};
// deliberately no VALIDATE_HANDLER — error surfaces at .run() instead

int main() {
  greet().run(PartialIO{}); // <-- error: Log is not handled
}
