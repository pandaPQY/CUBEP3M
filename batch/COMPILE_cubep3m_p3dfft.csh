##!/bin/csh

module list

cd ../source_threads

HeaderLinks -p
make clean
make -f Makefile_p3dfft

cd ../batch

echo "Sourced COMPILE_cubep3m_p3dfft.csh"

