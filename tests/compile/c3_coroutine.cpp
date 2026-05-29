#include "../../effects.hpp"

struct Ask : fx::Effect<int> {};

static auto double_ask() -> fx::Fx<int, Ask> {
  int x = perform(Ask{});
  co_return x * 2;
}

int main() {
  (void)&double_ask;
  return 0;
}
