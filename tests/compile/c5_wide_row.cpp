#include "../../effects.hpp"

struct Unit  {};
struct Ask   : fx::Effect<int>  {};
struct Log   : fx::Effect<Unit> { const char *msg = ""; };
struct Fail  : fx::Effect<int>  {};
struct State : fx::Effect<int>  {};

struct AskH : fx::Handler<Ask> {
  void handle(Ask, auto r) { r(42); }
};
struct LogH : fx::Handler<Log> {
  void handle(Log, auto r) { r({}); }
};
struct FailH : fx::Handler<Fail> {
  void handle(Fail, auto r) { r(-1); }
};
struct StateH : fx::Handler<State> {
  int s = 0;
  void handle(State, auto r) { r(s); }
};

static auto program() -> fx::Fx<int, Ask, Log, Fail, State> {
  int x  = perform(Ask{});
  perform(Log{});
  int s  = perform(State{});
  if (x == 0) co_return perform(Fail{});
  co_return x + s;
}

int main() {
  AskH ah; LogH lh; FailH fh; StateH sh;
  return program().run(ah, lh, fh, sh);
}
