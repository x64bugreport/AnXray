#!/bin/bash

source "bin/init/env.sh"

git submodule update --remote --recursive
rm -rf library/shadowsocks-libev/build/outputs/aar
./gradlew :library:shadowsocks-libev:assembleRelease || exit 1
mkdir -p app/libs
cp library/shadowsocks-libev/build/outputs/aar/shadowsocks-libev-release.aar app/libs/shadowsocks-libev.aar
