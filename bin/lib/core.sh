#!/bin/bash
source "bin/init/env.sh"
git submodule update --remote --recursive
bin/lib/core/init.sh
bin/lib/core/build.sh
