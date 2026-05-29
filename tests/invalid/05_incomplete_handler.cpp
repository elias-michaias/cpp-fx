

#include "../common.hpp"

struct IncompleteIO : IO::Handler {
  void handle(Ask, auto r) { r("x"); }

};
VALIDATE_HANDLER(IncompleteIO);

int main() {}
