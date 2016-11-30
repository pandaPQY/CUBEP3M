#!/bin/bash

cd ../source_threads

make clean
make -f Makefile NEUTRINOS=0
echo
echo "COMPILED DARK MATTER EXECUTABLE"
echo

cd ../batch

