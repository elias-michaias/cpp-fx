

#include "../common.hpp"

auto bad() -> Row<Ask>::Fx<int> {
  perform(Log{.message = "oops"});
  co_return 0;
}

int main() {}
