#!/bin/bash
##arch/arm64.sh: Build definitions for arm64.
##@copyright GPL-2.0+
CFLAGS_COMMON_ARCH='-fno-omit-frame-pointer'
LDFLAGS_COMMON_CROSS='-Wl,-rpath -Wl,/usr/lib -Wl,-rpath-link -Wl,/var/ab/cross-root/riscv64/usr/lib -L/var/ab/cross-root/riscv64/usr/lib '