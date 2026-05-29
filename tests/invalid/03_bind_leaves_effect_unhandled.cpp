

#include "../common.hpp"

auto safe_div(int a, int b) -> Row<Fail>::Fx<int> {
  if (b == 0)
    co_return perform(Fail{.reason = "division by zero"});
  co_return a / b;
}

int main() {


  auto x = safe_div(10, 0).bind(SilentLog{}).run();
  (void)x;
}
