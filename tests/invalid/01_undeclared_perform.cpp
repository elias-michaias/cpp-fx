// invalid/01_undeclared_perform.cpp
//
// EXPECTED ERROR — at the perform(Log{...}) line:
//
//   error: use of deleted function
//   'fx::PerformAwaitable<Log> Fx<int, Ask>::promise_type::await_transform(...)'
//
//   IDE squiggle: perform(e): effect E is not declared in this Fx's return
//   type.  Fix: E::Fx<T>  or  Row<..., E>::Fx<T>.
//
// Cause: this function's return type is Ask::Fx<int>, which declares only
// Ask.  Performing Log is not allowed — Log must appear in the return type.
//
// Fix: change the return type to IO::Fx<int> or Row<Ask, Log>::Fx<int>.

#include "../common.hpp"

auto bad() -> Ask::Fx<int> {
  perform(Log{.message = "oops"});  // <-- error: Log not declared here
  co_return 0;
}

int main() {}
