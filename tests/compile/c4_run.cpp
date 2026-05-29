#include "../../effects.hpp"

struct Ask : fx::Effect<int> {};

struct AskH : fx::Handler<Ask> {
  int val = 21;
  void handle(Ask, auto r) { r(val); }
};

static auto double_ask() -> fx::Fx<int, Ask> {
  int x = perform(Ask{});
  co_return x * 2;
}

int main() {
  AskH h;
  return double_ask().run(h);
}
