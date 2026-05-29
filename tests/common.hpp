#pragma once

#include "../effects.hpp"

#include <iostream>
#include <string>
#include <variant>
#include <vector>

using namespace fx;

struct Ask : Effect<std::string> {
  std::string prompt;
};

struct Log : Effect<std::monostate> {
  std::string message;
};

struct Fail : Effect<int> {
  std::string reason;
};

template <typename T> struct Emit : Effect<std::monostate> {
  T value;
};

using IO = Row<Ask, Log>;
using All = Row<IO, Fail>;

struct StdoutLog : Handler<Log> {
  void handle(Log e, auto r) {
    std::cout << "[log] " << e.message << "\n";
    r({});
  }
};

struct SilentLog : Handler<Log> {
  void handle(Log, auto r) { r({}); }
};

struct WarnFail : Handler<Fail> {
  void handle(Fail e, auto r) {
    std::cout << "[fail] " << e.reason << " -> -1\n";
    r(-1);
  }
};

struct FallbackFail : Handler<Fail> {
  int fallback;
  void handle(Fail, auto r) { r(fallback); }
};

struct ScriptedAskCycling : Handler<Ask> {
  std::vector<std::string> answers;
  int idx = 0;
  void handle(Ask, auto r) { r(answers[idx++ % (int)answers.size()]); }
};
