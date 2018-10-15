#!/bin/sh

mkdir -p sysroot/aarch64-linux-gnu

curl https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-a/8.2-2018.08/runtime-gcc-8.2-2018.08-x86_64-aarch64-linux-gnu.tar.xz | tar -Jx -C ./sysroot/aarch64-linux-gnu/
curl https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-a/8.2-2018.08/sysroot-glibc-8.2-2018.08-x86_64-aarch64-linux-gnu.tar.xz | tar -Jx -C ./sysroot/aarch64-linux-gnu/

