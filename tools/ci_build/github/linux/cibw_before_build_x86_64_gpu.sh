#!/bin/bash
#This script runs in top src dir
set -e -x
rm -rf Release
python3 tools/ci_build/build.py --build_dir=`pwd` --config Release --update --build --skip_submodule_sync --parallel --enable_pybind --use_cuda --cuda_version=11.1 --cuda_home=/usr/local/cuda-11.1 --cudnn_home=/usr/local/cuda-11.1 --cmake_extra_defines CMAKE_CUDA_HOST_COMPILER=/opt/rh/devtoolset-9/root/usr/bin/cc 'CMAKE_CUDA_ARCHITECTURES=37;50;52;60;61;70;75;80'
cp setup.py Release
