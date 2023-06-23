#!/bin/bash

source "bin/init/env.sh"

git submodule update --remote --recursive
rm -rf library/shadowsocks/build/outputs/aar
./gradlew :library:shadowsocks:assembleRelease || exit 1
mkdir -p app/libs
cp library/shadowsocks/build/outputs/aar/shadowsocks-release.aar app/libs/shadowsocks.aar
