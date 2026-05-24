#pragma once
// fx/channel.hpp — Value emission / push-based data pipelines
//
// Emit<T>{.value = v}     — push one value to the consumer; resumes with monostate
//
// Consumer handlers:
//   collect_handler(vec)      — append each value to a std::vector<T>
//   each_handler<T>(fn)       — call fn(T) for each value
//   fold_handler(acc, fn)     — acc = fn(move(acc), value) per emit
//
// Producers and consumers are fully decoupled: the producer just performs
// Emit<T>{}; the handler is swapped at the run() call site without touching
// the producer.
//
// Example:
//   auto range(int n) -> fx::chan::Emit<int>::Fx<void> {
//     for (int i = 0; i < n; ++i) perform(Emit<int>{.value = i});
//     co_return;
//   }
//
//   std::vector<int> out;
//   range(5).run(fx::chan::collect_handler(out));
//   // out == {0,1,2,3,4}

#include "../../effects.hpp"
#include <vector>

namespace fx::chan {

template <typename T>
struct Emit : fx::Effect<Emit<T>> {
    T value;
    using result_type = std::monostate;
};

// Append each emitted value to `out`.  `out` is captured by pointer so
// copies made by run() all refer to the same vector.
template <typename T>
auto collect_handler(std::vector<T> &out) {
    return fx::handler<Emit<T>>([&out](Emit<T> e, auto r) {
        out.push_back(std::move(e.value));
        r({});
    });
}

// Call `fn(T)` for each emitted value.  `fn` is captured by value.
// Specify T explicitly: each_handler<int>(fn).
template <typename T, typename F>
auto each_handler(F fn) {
    return fx::handler<Emit<T>>([fn = std::move(fn)](Emit<T> e, auto r) mutable {
        fn(std::move(e.value));
        r({});
    });
}

// Fold: `acc = fn(move(acc), value)` for each emission.
// `acc` is captured by pointer; its final value is available after run() returns.
// Specify T explicitly: fold_handler<int>(acc, fn).
template <typename T, typename S, typename F>
auto fold_handler(S &acc, F fn) {
    return fx::handler<Emit<T>>([&acc, fn = std::move(fn)](Emit<T> e, auto r) mutable {
        acc = fn(std::move(acc), std::move(e.value));
        r({});
    });
}

} // namespace fx::chan
