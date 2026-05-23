// invalid/06_missing_lambda.cpp
//
// EXPECTED ERROR — at the handler<IO>(...) call:
//
//   error: no matching function for call to 'handler<IO>(...)'
//   note: constraints not satisfied
//   note: 'fx::detail::all_lambda_handled_v<IO::effects, lambda, ...>'
//         evaluated to false
//
// handler<IO>() requires one lambda per effect in IO = Row<Ask, Log>.
// Providing only the Ask lambda leaves Log uncovered — a compile error
// at the call site, before any .run() is attempted.
//
// Fix: add a second lambda for Log:
//   handler<IO>(
//     [](Ask, auto r) { r("x"); },
//     [](Log, auto r) { r({}); }   // <-- add this
//   );

#include "../common.hpp"

auto greet() -> IO::Fx<std::string> {
  perform(Log{.message = "hi"});
  co_return perform(Ask{.prompt = "Name: "});
}

int main() {
  auto h = handler<IO>( // <-- error: Log lambda is missing
      [](Ask, auto r) { r(std::string{"x"}); }
      // missing: [](Log, auto r) { r({}); }
  );
  greet().run(h);
}
