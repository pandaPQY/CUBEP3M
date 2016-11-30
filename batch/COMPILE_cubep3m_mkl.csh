##!/bin/csh

module list

cd ../source_threads_mkl

make clean
make -f Makefile_mkl_GPC 

cd ../batch

echo "Sourced COMPILE_cubep3m_mkl.csh"

