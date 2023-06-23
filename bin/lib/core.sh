#!/bin/bash

bin/lib/core/init.sh
bin/lib/core/build.sh
git submodule update --remote --recursive
