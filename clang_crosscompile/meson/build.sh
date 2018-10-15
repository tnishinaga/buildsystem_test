#!/bin/sh

meson builddir --cross-file clang-aarch64-linux.txt && \
    cd builddir && \
    ninja &&
    file main.elf
