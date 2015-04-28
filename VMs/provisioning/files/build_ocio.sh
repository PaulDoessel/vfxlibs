#!/bin/bash
ROOT=$1
PREFIX=$2
OCIO_BUILD_APPS=$3
OCIO_BUILD_SHARED=$4

mkdir -p $ROOT/BUILD
cd $ROOT/BUILD

cmake -D CMAKE_CXX_COMPILER=/opt/rh/devtoolset-1.1/root/usr/bin/g++ -D CMAKE_C_COMPILER=/opt/rh/devtoolset-1.1/root/usr/bin/gcc -D CMAKE_CXX_FLAGS="-fPIC" -D CMAKE_INSTALL_PREFIX=/tmp/VFXREFPLAT/BUILDS/CY2015/ocio/1.0.9 -D PYTHON=/tmp/VFXREFPLAT/BUILDS/CY2015/python/2.7.9/bin/python -D OCIO_BUILD_APPS=$OCIO_BUILD_APPS -D OCIO_BUILD_SHARED=$OCIO_BUILD_SHARED -D OIIO_PATH=/tmp/VFXREFPLAT/BUILDS/CY2015/oiio/1.5.13 ..
make 
make install