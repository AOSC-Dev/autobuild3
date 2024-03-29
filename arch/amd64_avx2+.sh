#!/bin/bash
##arch/amd64_avx2.sh: Build definitions for amd64 with AVX2 support.
##                    Intel Haswell+, AMD bdver4+, VIA eden-x4+.
##@copyright GPL-2.0+
CFLAGS_COMMON_ARCH=' -fomit-frame-pointer -march=haswell -mno-rdrnd '
RUSTFLAGS_COMMON_ARCH='-Ctarget-cpu=haswell -Ctarget-feature=-rdrnd '
