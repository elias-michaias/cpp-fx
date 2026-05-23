// b6_allocators.cpp — per-perform Payload allocation strategies
//
// The two hot allocation sites in the library are:
//
//   • Coroutine frame  — one allocation when the Fx<T> is constructed.
//   • Payload<E>       — one allocation per fx::perform() call.
//
// Both are redirected through the active ScopedAllocator (if any).
// This benchmark compares five strategies for BATCH performs per coroutine,
// run REPS times:
//
//  1. Default (global operator new / delete)
//  2. PMR monotonic_buffer_resource backed by a heap buffer
//  3. PMR monotonic_buffer_resource backed by a static (non-heap) buffer
//  4. PMR unsynchronized_pool_resource (steady-state block reuse)
//  5. Hand-rolled O(1) free-list slab — no virtual dispatch overhead

#include "../../effects.hpp"
#include "bench.hpp"
#include <array>
#include <cstddef>
#include <iostream>
#include <memory_resource>
#include <new>
#include <vector>

// ── Effect under test ────────────────────────────────────────────────────────

struct Tick : fx::Effect<Tick> {
  using result_type = int;
};

// ── Payload / frame size constants ───────────────────────────────────────────

// Payload<Tick> = { Tick (1B + padding) + std::function<void(int)> (32B) }
// Typically 40 bytes on x86-64 / libstdc++.  We round up to max_align_t.
static constexpr std::size_t kPayloadSize = sizeof(fx::detail::Payload<Tick>);

static constexpr std::size_t kBlockSize =
    (kPayloadSize + alignof(std::max_align_t) - 1) &
    ~(alignof(std::max_align_t) - 1);

// Rough upper bound on a coroutine frame for Tick::Fx<long long>.
// Actual size is compiler-dependent (~200-400 bytes); 512 is safe.
static constexpr std::size_t kFrameEst = 512;

// ── Hand-rolled free-list slab ───────────────────────────────────────────────
//
// Slab of Capacity fixed-size blocks.  Each free block holds a pointer to the
// next free block (intrusive list).  Alloc and free are O(1).
//
// Large allocations (e.g., coroutine frames which are bigger than a Payload)
// fall through to a configurable fallback resource.  The dealloc side checks
// whether the pointer lives inside our storage range to dispatch correctly.

template <std::size_t BlockSize, std::size_t Capacity>
class FreeListSlab : public std::pmr::memory_resource {
  static_assert(BlockSize >= sizeof(void *), "block too small");

  union alignas(std::max_align_t) Block {
    std::byte data[BlockSize];
    Block *next;
  };

  Block storage_[Capacity];
  Block *head_ = nullptr;
  std::pmr::memory_resource *fallback_;

  bool in_slab(void *ptr) const noexcept {
    return ptr >= storage_ && ptr < storage_ + Capacity;
  }

  void build_free_list() {
    for (std::size_t i = 0; i + 1 < Capacity; ++i)
      storage_[i].next = &storage_[i + 1];
    storage_[Capacity - 1].next = nullptr;
    head_ = &storage_[0];
  }

public:
  explicit FreeListSlab(
      std::pmr::memory_resource *fallback = std::pmr::get_default_resource())
      : fallback_(fallback) {
    build_free_list();
  }

  /// Return all slab blocks to the free list (does not affect fallback).
  void reset() { build_free_list(); }

  std::size_t block_size() const noexcept { return BlockSize; }
  std::size_t capacity() const noexcept { return Capacity; }

private:
  void *do_allocate(std::size_t n, std::size_t align) override {
    if (n > BlockSize || !head_)
      return fallback_->allocate(n, align); // large / overflow → fallback
    Block *b = head_;
    head_ = b->next;
    return b->data;
  }

  void do_deallocate(void *ptr, std::size_t n, std::size_t align) noexcept override {
    if (!in_slab(ptr)) {
      fallback_->deallocate(ptr, n, align); // came from fallback
      return;
    }
    auto *b = reinterpret_cast<Block *>(ptr);
    b->next = head_;
    head_ = b;
  }

  bool do_is_equal(const std::pmr::memory_resource &o) const noexcept override {
    return this == &o;
  }
};

// ── Benchmark parameters ─────────────────────────────────────────────────────

static constexpr int BATCH = 5'000;   // performs per coroutine
static constexpr int REPS  = 2'000;   // coroutine invocations

// Arena must hold BATCH payloads + one frame per invocation.
// We round up generously and keep a single large buffer.
static constexpr std::size_t kArena =
    BATCH * (kBlockSize + 8 /*ptr overhead in PromiseBase::operator new*/) +
    kFrameEst + 65536;

// ── Handler ──────────────────────────────────────────────────────────────────

struct CountHandler {
  int n = 0;
  void operator()(Tick, std::function<void(int)> resume) { resume(n++); }
};

// ── Inner coroutine ──────────────────────────────────────────────────────────

static auto make_batch_coro() -> Tick::Fx<long long> {
  long long sum = 0;
  for (int i = 0; i < BATCH; ++i) {
    sum += perform(Tick{});
  }
  co_return sum;
}

// ── Main ─────────────────────────────────────────────────────────────────────

int main() {
  section("b6 — Allocator strategies");
  std::cout << "  Payload<Tick> size : " << kPayloadSize << " bytes\n";
  std::cout << "  Block size (slab)  : " << kBlockSize  << " bytes\n";
  std::cout << "  Arena budget       : " << kArena/1024 << " KiB\n";
  std::cout << "  Batch              : " << BATCH << " performs × "
                                         << REPS  << " coroutines\n";

  section("Batch cost (per-coroutine ns)");

  // ── 1. Default (global new/delete) ──────────────────────────────────────
  print_result(bench("1. Default new/delete", REPS, [&] {
    CountHandler h;
    auto guard = fx::handler<Tick>(h);
    do_not_optimize(make_batch_coro().run(guard));
  }));

  // ── 2. PMR monotonic — heap buffer, reset each iter ─────────────────────
  {
    std::vector<std::byte> buf(kArena);
    print_result(bench("2. Monotonic (heap buf, reset/iter)", REPS, [&] {
      std::pmr::monotonic_buffer_resource arena{
          buf.data(), buf.size(), std::pmr::null_memory_resource()};
      fx::ScopedAllocator alloc{&arena};
      CountHandler h;
      auto guard = fx::handler<Tick>(h);
      do_not_optimize(make_batch_coro().run(guard));
    }));
  }

  // ── 3. PMR monotonic — static (non-heap) buffer, reset each iter ────────
  {
    // Declared static to avoid blowing the call stack.
    static std::array<std::byte, kArena> sbuf;
    print_result(bench("3. Monotonic (static buf, reset/iter)", REPS, [&] {
      std::pmr::monotonic_buffer_resource arena{
          sbuf.data(), sbuf.size(), std::pmr::null_memory_resource()};
      fx::ScopedAllocator alloc{&arena};
      CountHandler h;
      auto guard = fx::handler<Tick>(h);
      do_not_optimize(make_batch_coro().run(guard));
    }));
  }

  // ── 4. PMR pool — steady-state reuse ────────────────────────────────────
  // Pool and ScopedAllocator are created once; payloads are freed back into
  // the pool each iteration, so the same blocks cycle across all REPS.
  {
    std::vector<std::byte> pbuf(kArena);
    std::pmr::monotonic_buffer_resource backing{
        pbuf.data(), pbuf.size(), std::pmr::null_memory_resource()};
    std::pmr::unsynchronized_pool_resource pool{&backing};
    fx::ScopedAllocator alloc{&pool};

    print_result(bench("4. PMR pool (steady-state)", REPS, [&] {
      CountHandler h;
      auto guard = fx::handler<Tick>(h);
      do_not_optimize(make_batch_coro().run(guard));
    }));
  }

  // ── 5. Hand-rolled free-list slab ────────────────────────────────────────
  // One slab that can hold BATCH+2 blocks (BATCH payloads + a frame slot).
  // reset() is called before each iteration so all slots are available.
  {
    static FreeListSlab<kBlockSize, BATCH + 4> slab;
    fx::ScopedAllocator alloc{&slab};

    print_result(bench("5. Free-list slab (O(1), no vdispatch)", REPS, [&] {
      slab.reset();
      CountHandler h;
      auto guard = fx::handler<Tick>(h);
      do_not_optimize(make_batch_coro().run(guard));
    }));
  }

  // ── Per-perform breakdown ────────────────────────────────────────────────
  section("Per-perform cost (÷ " + std::to_string(BATCH) + ")");
  std::cout << "  (re-run above / " << BATCH << " to get ns/perform)\n";

  // ── Single-perform worst case ────────────────────────────────────────────
  section("Single-perform coroutine (worst-case frame amortisation)");

  static constexpr int SP_REPS = 500'000;

  auto sp_make = []() -> Tick::Fx<int> {
    co_return perform(Tick{});
  };

  // 1s. Default
  print_result(bench("1s. Default", SP_REPS, [&] {
    CountHandler h;
    auto guard = fx::handler<Tick>(h);
    do_not_optimize(sp_make().run(guard));
  }));

  // 4s. PMR pool (steady-state)
  {
    std::vector<std::byte> pbuf2(65536);
    std::pmr::monotonic_buffer_resource b2{
        pbuf2.data(), pbuf2.size(), std::pmr::null_memory_resource()};
    std::pmr::unsynchronized_pool_resource pool2{&b2};
    fx::ScopedAllocator a2{&pool2};
    print_result(bench("4s. PMR pool", SP_REPS, [&] {
      CountHandler h;
      auto guard = fx::handler<Tick>(h);
      do_not_optimize(sp_make().run(guard));
    }));
  }

  // 5s. Free-list slab (8 slots — one frame + one payload at a time)
  {
    static FreeListSlab<kBlockSize, 8> mini_slab;
    fx::ScopedAllocator a5{&mini_slab};
    print_result(bench("5s. Free-list slab", SP_REPS, [&] {
      CountHandler h;
      auto guard = fx::handler<Tick>(h);
      do_not_optimize(sp_make().run(guard));
    }));
  }

  std::cout << '\n';
  return 0;
}
