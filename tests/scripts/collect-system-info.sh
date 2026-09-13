#!/bin/bash
set -eu

OUT="${1:-system-info.txt}"
{
    echo "timestamp=$(date -Is)"
    echo "hostname=$(hostname)"
    uname -a
    cat /etc/os-release
    echo "--- cmdline ---"
    cat /proc/cmdline
    echo "--- memory ---"
    free -h
    echo "--- uptime ---"
    uptime
    echo "--- cpu governor ---"
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null || true
    echo "--- preemption ---"
    zgrep PREEMPT /proc/config.gz 2>/dev/null || grep PREEMPT /boot/config-$(uname -r) || true
} | tee "$OUT"