

#include "../common.hpp"

auto greet() -> IO::Fx<std::string> {
  perform(Log{.message = "hi"});
  co_return perform(Ask{.prompt = "Name: "});
}

struct PartialIO : Handler<IO> {
  void handle(Ask, auto r) { r(std::string{"x"}); }

};


int main() {
  greet().run(PartialIO{});
}
