// invalid/05_incomplete_handler.cpp
//
// EXPECTED ERROR — at the VALIDATE_HANDLER(IncompleteIO) line:
//
//   error: static assertion failed:
//   'IncompleteIO' is missing operator() for one or more of its declared
//   effects.  Each effect E requires: void operator()(E, auto resume) { ... }
//
// VALIDATE_HANDLER fires at definition time — before the type is ever used
// in a .run() call.  The IDE squiggle appears on the macro line itself.
//
// Cause: IncompleteIO inherits IO::Handler, which means it
// must provide operator() for both Ask and Log.  The Log overload is missing.
//
// Fix: add void operator()(Log e, auto r) { ... } to IncompleteIO.

#include "../common.hpp"

struct IncompleteIO : IO::Handler {
  void handle(Ask, auto r) { r("x"); }
  // void handle(Log, auto r) { r({}); }   <-- intentionally missing
};
VALIDATE_HANDLER(IncompleteIO); // <-- error fires here

int main() {}
