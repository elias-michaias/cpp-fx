

#include "../common.hpp"

auto greet() -> IO::Fx<std::string> {
  perform(Log{.message = "hi"});
  co_return perform(Ask{.prompt = "Name: "});
}

int main() {
  greet().run(StdoutLog{});
}
