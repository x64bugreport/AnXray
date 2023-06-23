#!/bin/bash
git submodule update --remote --recursive
git submodule update --init 'library/core/*'
git submodule update --init 'external/*'
