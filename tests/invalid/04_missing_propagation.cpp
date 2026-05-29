

#include "../common.hpp"

auto inner_comp() -> IO::Fx<int> {
  perform(Log{.message = "inner log"});
  co_return std::stoi(perform(Ask{.prompt = "x: "}));
}


auto outer_comp() -> Row<Ask>::Fx<int> {
  co_return co_await inner_comp();

}

int main() {}
