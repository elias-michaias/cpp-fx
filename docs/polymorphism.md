# Row Polymorphism

Row polymorphism lets a higher-order function work over *any* effect row instead
of a hardcoded one.  Most patterns need no special tooling — they fall out of
plain `Fx<T, Es...>` template decomposition.  Five library utilities handle the
cases that don't:

| Utility | Kind | What it gives you |
|---|---|---|
| `fx::AnyFx<T>` | concept | "T must be some Fx" — clean error when Rebind would fail |
| `fx::FxMapper<F, T>` | concept | "F(T) must return some Fx" — one fewer template param |
| `fx::Rebind<FxT, NewT>` | alias | Same row, different value type |
| `fx::FxOf<F, T>` | alias | The Fx type that F produces when called with T |
| `fx::FxValue<F, T>` | alias | The value type inside that Fx |

`FxOf` and `FxValue` are constrained by `FxMapper<F, T>` — they won't compile
unless the function actually returns an Fx.

---

## Most HOFs need no utilities

**Row preservation, transformation, and extension** all work by spelling
`Fx<T, Es...>` directly in the template parameter.  The compiler deduces `T`
and `Es...`; the return type is expressed in terms of them.

```cpp
// Preserve row, transform T.
template<typename F, typename T, typename... Es>
auto fmap(F f, Fx<T, Es...> comp) -> Fx<std::invoke_result_t<F, T>, Es...> {
  co_return f(co_await std::move(comp));
}

// Sequence two computations with the same row.
template<typename T, typename U, typename... Es>
auto seq(Fx<T, Es...> first, Fx<U, Es...> second) -> Fx<U, Es...> {
  co_await std::move(first);
  co_return co_await std::move(second);
}

// Extend: add Log to whatever row comp already has.
template<typename T, typename... Es>
auto with_log_wrap(std::string label, Fx<T, Es...> comp) -> Fx<T, Log, Es...> {
  perform(Log{.message = label + ": start"});
  T r = co_await std::move(comp);
  perform(Log{.message = label + ": end"});
  co_return r;
}
```

---

## Row widening

A computation with row `{A}` can be `co_await`-ed inside a coroutine with row
`{A, B}` — no cast needed.  The subset check is structural and happens at
compile time.

```cpp
auto ask_only() -> Row<Ask>::Fx<int> {
  co_return std::stoi(perform(Ask{.prompt = "n: "}));
}

auto io_wrap() -> IO::Fx<int> {       // IO = Row<Ask, Log>
  perform(Log{.message = "before"});
  int n = co_await ask_only();        // ✓  {Ask} ⊆ {Ask, Log} — implicit
  perform(Log{.message = "after"});
  co_return n;
}
```

---

## Row constraints

### Pure-only

Typing a parameter as `Fx<T>` (empty effect pack) rejects any effectful
computation with a plain type mismatch:

```cpp
auto run_pure = [](Fx<int> comp) { return comp.run(); };
run_pure(pure_int(99));  // ✓
// run_pure(ask_int());  // ✗  Fx<int,Ask> ≠ Fx<int>
```

### Exact row

`Fx<T, Ask>` as a parameter accepts exactly that row:

```cpp
auto run_ask = [](Fx<int, Ask> comp) {
  return comp.run(FixedAsk{.ans = "42"});
};
// run_ask(pure_int(1));  // ✗  Fx<int> ≠ Fx<int,Ask>
// run_ask(log_int(1));   // ✗  Fx<int,Log> ≠ Fx<int,Ask>
```

### Subset-of-row

Expand `Es...` under a concept to express "all effects must belong to some set":

```cpp
template<typename E>
concept InIO = std::same_as<E, Ask> || std::same_as<E, Log>;

template<typename T, typename... Es>
  requires (InIO<Es> && ...)
auto io_only(Fx<T, Es...> comp) -> Fx<T, Es...> { return std::move(comp); }

io_only(ask_int());    // ✓  {Ask} ⊆ {Ask, Log}
io_only(widened());    // ✓  {Ask, Log} ⊆ {Ask, Log}
// io_only(fail_computation());  // ✗  Fail ∉ {Ask, Log}
```

---

## When the row flows from a function argument

The patterns above all receive an `Fx` directly.  When the effect row is
carried by a *function parameter* — a predicate, mapper, or callback — the
five utilities come in.

### `FxMapper<F, T>` — constraint

`FxMapper<F, T>` is satisfied when `F(T)` returns some `Fx` type.  It
replaces a default template argument that would otherwise be needed just to
name the return type, and makes the constraint self-documenting:

```cpp
// Without FxMapper — intent buried, 3 template params
template<typename T, typename F, typename FxB = std::invoke_result_t<F, T>>
auto filter_fx(std::vector<T> xs, F pred) -> fx::Rebind<FxB, std::vector<T>>;

// With FxMapper — 2 template params, constraint is clear
template<typename T, fx::FxMapper<T> F>
auto filter_fx(std::vector<T> xs, F pred)
    -> fx::Rebind<fx::FxOf<F, T>, std::vector<T>>;
```

### `FxOf<F, T>` and `FxValue<F, T>`

`FxOf<F, T>` is the Fx type that `F(T)` produces.  `FxValue<F, T>` is the
value type inside it.  Together they eliminate all default template parameters
from list-map style HOFs where the output element type differs from the input:

```cpp
// Without FxOf/FxValue — 2 extra template params, both plumbing
template<typename T, fx::FxMapper<T> F,
         typename FxU = std::invoke_result_t<F, T>,   // ← noise
         typename U   = typename FxU::value_type>      // ← noise
auto fmap_list(std::vector<T> xs, F f)
    -> fx::Rebind<FxU, std::vector<U>>;

// With FxOf/FxValue — only meaningful template params remain
template<typename T, fx::FxMapper<T> F>
auto fmap_list(std::vector<T> xs, F f)
    -> fx::Rebind<fx::FxOf<F, T>, std::vector<fx::FxValue<F, T>>>;
```

Both are constrained by `FxMapper<F, T>` — they produce a clear error if F
doesn't return an Fx.

### Full examples

**filter_fx** — keeps elements for which the predicate returns `true` inside an Fx:

```cpp
template<typename T, fx::FxMapper<T> F>
auto filter_fx(std::vector<T> xs, F pred)
    -> fx::Rebind<fx::FxOf<F, T>, std::vector<T>> {
  std::vector<T> out;
  for (auto& x : xs)
    if (co_await pred(x))
      out.push_back(x);
  co_return out;
}
```

The predicate's return type drives the row:

```cpp
// Pure predicate → filter_fx has no effects.
auto evens = filter_fx(
    std::vector{1,2,3,4,5},
    [](int x) -> Fx<bool> { co_return x % 2 == 0; }
).run();

// Ask predicate → filter_fx gets row {Ask}.
auto confirmed = filter_fx(
    std::vector{1,2,3},
    [](int x) -> Row<Ask>::Fx<bool> {
        co_return perform(Ask{.prompt="keep?"}) == "yes";
    }
).run(ScriptedAsk{.answers = {"yes","no","yes"}});
```

**fmap_list** — transforms each element through an effectful function:

```cpp
template<typename T, fx::FxMapper<T> F>
auto fmap_list(std::vector<T> xs, F f)
    -> fx::Rebind<fx::FxOf<F, T>, std::vector<fx::FxValue<F, T>>> {
  std::vector<fx::FxValue<F, T>> out;
  for (auto& x : xs)
    out.push_back(co_await f(x));
  co_return out;
}
```

### `AnyFx<T>` — concept gate

`AnyFx<T>` is satisfied by any `Fx<T, Es...>` instantiation.  Use it when
you need `Rebind` in a return type but the computation parameter is otherwise
unconstrained:

```cpp
template<fx::AnyFx FxT>
auto always_42(FxT comp) -> fx::Rebind<FxT, int> {
  co_await std::move(comp);  // run for effects, discard result
  co_return 42;
}
```

Without `AnyFx`, passing a non-Fx type produces a deep substitution failure
inside `Rebind` instead of a readable constraint error at the call site.

### `Rebind<FxT, NewT>` — same row, new value type

`Rebind<FxT, NewT>` produces `Fx<NewT, Es...>` from `Fx<OldT, Es...>`.  It
is the one operation that requires a partial specialisation — you cannot
express it as a plain alias or inline expression.

```cpp
Rebind<Fx<bool, Ask, Log>, std::vector<int>>  ==  Fx<std::vector<int>, Ask, Log>
```
