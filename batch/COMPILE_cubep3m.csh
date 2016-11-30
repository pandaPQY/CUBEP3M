##!/bin/csh

module list

cd ../source_threads

HeaderLinks -f
make clean
make -f Makefile

cd ../batch

echo "Sourced COMPILE_cubep3m.csh"

