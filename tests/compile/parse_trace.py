#!/usr/bin/env python3
"""
Parse a Clang -ftime-trace JSON file and print a human-readable summary.

Usage:
  clang++ -std=c++23 -O2 -I../.. -c FILE.cpp -o /dev/null \
          -ftime-trace=/tmp/trace.json
  python3 parse_trace.py /tmp/trace.json [--top N] [--brief]
"""

import json
import sys
import argparse
import os
from collections import defaultdict

INTERESTING = {
    "ParseClass",
    "ParseDeclarationOrFunctionDefinition",
    "ParseFunctionDefinition",
    "InstantiateClass",
    "InstantiateFunction",
    "CheckConstraintSatisfaction",
    "CodeGen Function",
    "OptFunction",
    "Frontend",
    "Backend",
    "Total ExecuteCompiler",
    "Source",
}

CATEGORY_ORDER = [
    "ParseClass",
    "ParseDeclarationOrFunctionDefinition",
    "ParseFunctionDefinition",
    "InstantiateClass",
    "InstantiateFunction",
    "CheckConstraintSatisfaction",
    "CodeGen Function",
    "OptFunction",
]


def load(path):
    with open(path) as f:
        return json.load(f)


def summarise(path, data, top=20, brief=False):
    events = [e for e in data["traceEvents"] if e.get("ph") == "X"]

    total_ms = 0.0
    frontend_ms = 0.0
    backend_ms = 0.0

    for e in events:
        dur = e.get("dur", 0) / 1000.0
        name = e.get("name", "")
        if name == "Total ExecuteCompiler":
            total_ms = dur
        elif name == "Total Frontend":
            frontend_ms = dur
        elif name == "Total Backend":
            backend_ms = dur

    # Per-category totals
    cat_total = defaultdict(float)
    cat_count = defaultdict(int)
    cat_examples = defaultdict(list)  # (dur, detail)

    for e in events:
        name = e.get("name", "")
        if name not in CATEGORY_ORDER:
            continue
        dur = e.get("dur", 0) / 1000.0
        detail = e.get("args", {}).get("detail", "")
        cat_total[name] += dur
        cat_count[name] += 1
        cat_examples[name].append((dur, detail))

    # Top individual events (across all interesting categories)
    all_events = []
    for e in events:
        name = e.get("name", "")
        if name not in CATEGORY_ORDER:
            continue
        dur = e.get("dur", 0) / 1000.0
        detail = e.get("args", {}).get("detail", "")
        all_events.append((dur, name, detail))
    all_events.sort(reverse=True)

    label = os.path.basename(path)
    # Strip fx_trace_ prefix and .json suffix to recover source filename
    if label.startswith("fx_trace_") and label.endswith(".json"):
        label = label[len("fx_trace_"):-len(".json")] + ".cpp"
    print(f"=== Clang compile trace: {label} ===")
    print(f"  Total:    {total_ms:7.1f} ms")
    if frontend_ms:
        print(f"  Frontend: {frontend_ms:7.1f} ms")
    if backend_ms:
        print(f"  Backend:  {backend_ms:7.1f} ms")

    if brief:
        print()
        return

    print()
    print("  --- By category ---")
    for cat in CATEGORY_ORDER:
        if cat not in cat_total:
            continue
        pct = (cat_total[cat] / total_ms * 100) if total_ms else 0
        print(f"  {cat:<40s}  {cat_total[cat]:7.1f} ms  "
              f"({cat_count[cat]:3d} instances, {pct:4.1f}%)")

    print()
    print(f"  --- Top {top} slowest instantiations / parses ---")
    for dur, name, detail in all_events[:top]:
        short = detail
        # Trim long paths (keep only the last interesting component)
        if "/" in detail:
            short = detail.split("/")[-1]
        # Trim at 80 chars
        if len(short) > 80:
            short = short[:77] + "..."
        print(f"  {dur:7.1f} ms  {name}: {short}")

    print()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("trace", help="Path to -ftime-trace JSON file")
    parser.add_argument("--top", type=int, default=20,
                        help="Number of top events to show (default: 20)")
    parser.add_argument("--brief", action="store_true",
                        help="Only print totals, no breakdown")
    args = parser.parse_args()

    data = load(args.trace)
    summarise(args.trace, data, top=args.top, brief=args.brief)


if __name__ == "__main__":
    main()
