#pragma once
// fx.hpp — Framework umbrella header
//
// Include this file to get effects.hpp plus all micro-library modules.
// For a lighter build, include individual headers directly:
//
//   #include "fx/env.hpp"     — Ask<Env>, env_handler
//   #include "fx/state.hpp"   — Get<S>, Put<S>, state_handler, run_state
//   #include "fx/raise.hpp"   — Raise<E>, raise_handler, run_expected
//   #include "fx/log.hpp"     — Log, Level, silent_log, stderr_log, capture_log
//   #include "fx/channel.hpp" — Emit<T>, collect_handler, each_handler, fold_handler
//   #include "fx/match.hpp"   — overload, match

#include "../effects.hpp"
#include "fx/env.hpp"
#include "fx/state.hpp"
#include "fx/raise.hpp"
#include "fx/log.hpp"
#include "fx/channel.hpp"
#include "fx/match.hpp"
