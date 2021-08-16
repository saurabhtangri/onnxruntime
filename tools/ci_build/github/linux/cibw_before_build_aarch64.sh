#!/bin/bash
#This script runs in top src dir
set -e -x
rm -rf Release
python3 tools/ci_build/build.py --build_dir=`pwd` --config Release --update --skip_submodule_sync --parallel --enable_pybind
cd Release
make -j$(nproc) onnxruntime_pybind11_state
cp ../setup.py .