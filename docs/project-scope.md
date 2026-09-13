# Project Scope

## Problem statement

This project investigates how Linux scheduling and kernel configuration affect timing behavior on a constrained Raspberry Pi Zero W. The final result will compare a stock kernel with PREEMPT_RT under controlled workloads and document an update strategy for embedded deployment.

## Goals

1. Measure stock-kernel scheduling latency.
2. Build and boot a custom Raspberry Pi kernel.
3. Enable and verify PREEMPT_RT.
4. Compare latency under idle and loaded conditions.
5. Implement a periodic real-time userspace service.
6. Implement and load a small kernel module.
7. Add a framed UART protocol for an MCU node.
8. Demonstrate signed RAUC artifact updates.
9. Document a path toward redundant rootfs A/B updates.

## Non-goals

- Claiming hard-real-time determinism on the Raspberry Pi Zero W.
- Designing a production-certified safety system.
- Committing complete SD-card images to Git.
- Treating an application update as a complete rootfs A/B update.

## Constraints

- Single-core ARMv6 target.
- Limited RAM and CPU performance.
- Wi-Fi and SD-card timing variability.
- Build kernels on the host, not on the Pi.

## Success criteria

- [ ] Stock and RT tests use identical documented conditions.
- [ ] Kernel configuration and source revision are recorded.
- [ ] The custom kernel boots with a documented recovery procedure.
- [ ] `CONFIG_PREEMPT_RT=y` is verified on the running target.
- [ ] Results include min/average/max latency and test conditions.
- [ ] A signed update artifact is verified and installed.