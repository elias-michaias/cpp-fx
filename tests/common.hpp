#pragma once
// Shared effect declarations, named rows, and reusable handler structs.
// Included by every test file in this directory.

#include "../effects.hpp"

#include <iostream>
#include <string>

using namespace fx;

// ---- Effects ---------------------------------------------------------------

struct Ask : Effect<Ask> {
  using result_type = std::string;
  std::string prompt;
};

struct Log : Effect<Log> {
  using result_type = std::monostate;
  std::string message;
};

struct Fail : Effect<Fail> {
  using result_type = int; // handler resumes with a fallback integer
  std::string reason;
};

// Emit<T> and Emit<U> are completely separate effects — each needs its own
// handler.  The CRTP base gives Emit<T>::Fx<R> for free.
template <typename T> struct Emit : Effect<Emit<T>> {
  T value;
  using result_type = std::monostate;
};

// ---- Named rows ------------------------------------------------------------

using IO = Row<Ask, Log>;
using All = Row<IO, Fail>;

// ---- Common handler structs ------------------------------------------------

struct StdoutLog : Log::Handler<StdoutLog> {
  void handle(Log e, auto r) {
    std::cout << "[log] " << e.message << "\n";
    r({});
  }
};
VALIDATE_HANDLER(StdoutLog);

struct SilentLog : Log::Handler<SilentLog> {
  void handle(Log, auto r) { r({}); }
};
VALIDATE_HANDLER(SilentLog);

struct WarnFail : Fail::Handler<WarnFail> {
  void handle(Fail e, auto r) {
    std::cout << "[fail] " << e.reason << " -> -1\n";
    r(-1);
  }
};
VALIDATE_HANDLER(WarnFail);

struct FallbackFail : Fail::Handler<FallbackFail> {
  int fallback;
  void handle(Fail, auto r) { r(fallback); }
};
VALIDATE_HANDLER(FallbackFail);

// Cycles through a scripted list of answers, repeating from the start.
struct ScriptedAskCycling : Ask::Handler<ScriptedAskCycling> {
  std::vector<std::string> answers;
  int idx = 0;
  void handle(Ask, auto r) { r(answers[idx++ % (int)answers.size()]); }
};
VALIDATE_HANDLER(ScriptedAskCycling);
