#!/usr/bin/env bash
set -exuo pipefail
cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DPhysX_ROOT=$HOME/git/physx4 -B build
ninja -C build
./build/big_example/big_example
