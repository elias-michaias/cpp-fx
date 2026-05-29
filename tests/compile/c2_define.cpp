#include "../../effects.hpp"

struct Unit {};
struct Ask  : fx::Effect<int>  {};
struct Log  : fx::Effect<Unit> { const char *msg = ""; };
struct Fail : fx::Effect<int>  {};

int main() { return 0; }
