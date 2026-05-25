// invalid/03_bind_leaves_effect_unhandled.cpp
//
// EXPECTED ERROR — at the .run() call:
//
//   error: static assertion failed:
//   fx::run -- no handler for effect E (1st template arg).
//
// Cause: safe_div returns Fail::Fx<int>.  .bind(SilentLog{}) pre-installs
// a Log handler but Fail is not in the effect list — it is simply ignored.
// Then .run() is called with no additional handlers, leaving Fail uncovered.
//
// With the new API, binding a handler for a non-declared effect is silently
// ignored (no extra constraint at bind time), but any *declared* effect that
// remains unhandled is caught at .run().
//
// Fix: bind the Fail handler instead (or in addition):
//   safe_div(10, 0).bind(FallbackFail{-1}).run();
//   safe_div(10, 0).run(FallbackFail{-1});

#include "../common.hpp"

auto safe_div(int a, int b) -> Fail::Fx<int> {
  if (b == 0) co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

int main() {
  // SilentLog handles Log, but Fail::Fx<int> only declares Fail.
  // Fail is still unhandled → compile error at .run().
  auto x = safe_div(10, 0).bind(SilentLog{}).run();  // <-- error: Fail unhandled
  (void)x;
}
