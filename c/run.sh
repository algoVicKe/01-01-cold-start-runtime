#!/bin/bash
set -e

echo "Compiling C..."
gcc -o app src/*.c

echo "Running C..."
./app
