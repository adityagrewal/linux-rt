#!/bin/bash
set -eu

OUT_DIR="${1:-$HOME/linux-rt-results}"
DURATION="${DURATION:-300s}"
mkdir -p "$OUT_DIR"
STAMP="$(date +%Y%m%d-%H%M%S)"

{
    echo "timestamp=$(date -Is)"
    uname -a
    cat /proc/cmdline
    echo "duration=$DURATION"
    echo "--- cyclictest ---"
    sudo cyclictest \
        --mlockall \
        --priority=80 \
        --interval=1000 \
        --distance=0 \
        --threads=1 \
        --duration="$DURATION"
} | tee "$OUT_DIR/cyclictest-$STAMP.txt"