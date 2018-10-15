set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(triple aarch64-linux-gnu)

set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang)
set(CMAKE_AR llvm-ar)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER_TARGET ${triple})
set(CMAKE_SYSROOT $ENV{PWD}/../..//sysroot/aarch64-linux-gnu/)


set(CMAKE_INCLUDE_PATH ${CMAKE_SYSROOT}/include)
set(CMAKE_LIBRARY_PATH ${CMAKE_SYSROOT}/lib)
set(CMAKE_INSTALL_PREFIX ${CMAKE_SYSROOT}/)

set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)


# C
set(c_flags 
    "-Wall
    -std=c11")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${c_flags}")

# C++
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")


# linker
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fuse-ld=/usr/bin/ld.lld")
