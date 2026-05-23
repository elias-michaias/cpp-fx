// invalid/03_wrong_handle_effect.cpp
//
// EXPECTED ERROR — at the handle<Log>(...) call:
//
//   error: no matching function for call to 'handle<Log>(...)'
//   note: constraints not satisfied
//   note: 'fx::detail::contains_in_list_v<Log, fx::detail::type_list<Fail>>'
//         evaluated to false
//
// Cause: safe_div returns Fail::Fx<int>, whose only declared effect is Fail.
// Trying to handle<Log> a computation that never declared Log is a compile
// error — you can only handle effects that are actually declared.
//
// Fix: either handle<Fail> (the correct effect), or use a function that
// actually declares Log in its return type.

#include "../common.hpp"

auto safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0) co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

int main() {
  // Log is not in safe_div's effect list (Fail::Fx<int> = Fx<int, Fail>).
  auto x = handle<Log>(safe_div(10, 0),   // <-- error: Log not in {Fail}
                        handler<Log>([](Log, auto r) { r({}); }));
}
