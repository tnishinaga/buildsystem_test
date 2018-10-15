#!/bin/sh

cmake -H. -Bbuilddir -GNinja -DCMAKE_TOOLCHAIN_FILE=$PWD/aarch64-linux-gnu.cmake
cd builddir && ninja && file main.elf