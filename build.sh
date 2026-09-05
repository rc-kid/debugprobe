#!/bin/bash
git submodule update --init --recursive
mkdir -p build
cd build
export PICO_SDK_PATH=${HOME}/devel/rckid/lib/pico-sdk
cmake .. -DPICO_BOARD=pico2
cmake --build . -j