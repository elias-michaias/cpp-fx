#pragma once
// fx/log.hpp — Structured logging effect
//
// Log{.level = Level::Info, .message = "..."}  — emit a log entry; always resumes
// Level                                         — Debug / Info / Warn / Error
// Entry                                         — {Level, std::string} pair for capture
//
// Stock handlers (all zero-allocation):
//   silent_log()          — discard all messages (tests, hot paths)
//   stderr_log()          — write "<LEVEL> <message>\n" to stderr via fwrite
//   capture_log(vec)      — append Entry{level, string} to vec (tests / in-memory)
//
// message is std::string_view: no allocation at the perform site.
// The view is only dereferenced during the handler call, which is synchronous,
// so string literals and std::string lvalues are always safe.
//
// The perform() macro is a single-argument macro, so multi-field struct literals
// with commas in designated initializers will be misinterpreted by the
// preprocessor.  Use the factory functions instead:
//
//   perform(fx::log::debug("msg"))   instead of
//   perform(Log{.level = Level::Debug, .message = "msg"})

#include "../../effects.hpp"
#include <cstdint>
#include <cstdio>
#include <string>
#include <string_view>
#include <vector>

namespace fx::log {

enum class Level : std::uint8_t { Debug, Info, Warn, Error };

struct Log : fx::Effect<Log> {
    Level            level   = Level::Info;
    std::string_view message;
    using result_type = std::monostate;
};

struct Entry {
    Level       level;
    std::string message;
};

// --- Factory functions (avoids designated-initializer commas in perform()) ----

inline Log debug(std::string_view msg) { return {.level = Level::Debug, .message = msg}; }
inline Log info (std::string_view msg) { return {.level = Level::Info,  .message = msg}; }
inline Log warn (std::string_view msg) { return {.level = Level::Warn,  .message = msg}; }
inline Log error(std::string_view msg) { return {.level = Level::Error, .message = msg}; }

// --- Handlers ----------------------------------------------------------------

// Discard all log messages.
inline auto silent_log() {
    return fx::handler<Log>([](Log, auto r) { r({}); });
}

// Write "<LEVEL> <message>\n" to stderr.  No heap allocation.
inline auto stderr_log() {
    return fx::handler<Log>([](Log e, auto r) {
        static constexpr const char *tags[] = {"DEBUG", "INFO", "WARN", "ERROR"};
        const char *tag = tags[static_cast<std::uint8_t>(e.level)];
        std::fputs(tag, stderr);
        std::fputc(' ', stderr);
        std::fwrite(e.message.data(), 1, e.message.size(), stderr);
        std::fputc('\n', stderr);
        r({});
    });
}

// Append each entry to `out` as an owned string (for testing / replay).
inline auto capture_log(std::vector<Entry> &out) {
    return fx::handler<Log>([&out](Log e, auto r) {
        out.push_back({e.level, std::string(e.message)});
        r({});
    });
}

} // namespace fx::log
