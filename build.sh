#!/bin/bash

os=$(uname -s)

if [ "$os" = "Linux" ]; then
    echo "Building on Linux..."
    #bash build_linux.sh
    bash build_linux2.sh
elif [ "$os" = "Darwin" ]; then
    echo "Building on MacOS..."
    bash build_mac.sh
else
    echo "Unknown operating system: $os"
    exit 1
fi