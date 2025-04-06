#!/bin/bash
cd /home/l/git/Raygun
trash -v build; cmake -GNinja -DCMAKE_BUILD_TYPE=Debug -DPhysX_ROOT=$HOME/git/physx4 -B build 2>&1 | tee cmake.log
ninja -C build | tee ninja_build.log && timeout 20 ./build/example/example 2>&1 | tee run_example.log
strace -f -e trace=signal ./build/example/example  # Trace signals (catches segfaults)
strace -f -o strace_full.log ./build/example/example # Full strace log
