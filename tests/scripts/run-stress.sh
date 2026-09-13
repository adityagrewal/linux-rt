#!/bin/bash
set -eu
stress-ng \
    --cpu 1 \
    --io 1 \
    --vm 1 \
    --vm-bytes 16M \
    --timeout "${1:-300s}" \
    --metrics-brief