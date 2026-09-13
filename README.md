# Embedded Linux RT on Raspberry Pi Zero W

## Purpose

This repository documents a reproducible embedded Linux project on a Raspberry Pi Zero W. It compares a stock Linux kernel with a PREEMPT_RT kernel, measures scheduling latency, implements a real-time userspace service and kernel module, connects to an MCU over UART, and prototypes signed A/B software updates.

## Target hardware

- Board: Raspberry Pi Zero W
- CPU: [fill in]
- RAM: [fill in]
- Storage: [fill in GB microSD]
- Power supply: [fill in]
- Network: 2.4 GHz Wi-Fi
- Target OS: Raspberry Pi OS Lite 32-bit

## Host environment

- Host OS: [Windows version / Linux distribution]
- Build environment: [WSL2 Ubuntu version / VM / native Linux]
- Cross compiler: [fill in]
- Git revision: [fill in]

## Project stages

- [ ] Headless OS installation
- [ ] Stock-kernel baseline
- [ ] Userspace periodic real-time test
- [ ] Kernel module
- [ ] Custom non-RT kernel
- [ ] PREEMPT_RT kernel
- [ ] Latency comparison
- [ ] MCU UART protocol
- [ ] Signed RAUC artifact update
- [ ] Linux A/B rootfs prototype

## Repository layout

- `docs/`: architecture, methodology, and results
- `kernel/`: kernel versions, configurations, and build scripts
- `userspace/`: real-time applications
- `kernel-module/`: Linux kernel modules
- `tests/`: test scripts and test vectors
- `systemd/`: service files
- `rauc/`: update-bundle configuration

## Status

Current milestone: [fill in]

Last verified on hardware: [YYYY-MM-DD]