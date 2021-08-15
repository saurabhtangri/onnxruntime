#!/bin/bash
#This script runs in top src dir
set -e -x
rm -rf Release
python3 tools/ci_build/build.py --build_dir=`pwd` --config Release --update --build  --skip_submodule_sync --parallel --enable_pybind --enable_lto
cp setup.py Release