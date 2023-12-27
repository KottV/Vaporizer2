#!/usr/bin/bash

PLUGIN_VERSION=$(cat VERSION)

if [ "$1" = "ci" ]; then
    sudo apt-get update
    sudo apt-get install freeglut3-dev g++ libasound2-dev libfreetype6-dev libjack-jackd2-dev libx11-dev libxcomposite-dev libxcursor-dev libxinerama-dev libxrandr-dev mesa-common-dev libfftw3-dev

    git submodule update --init --recursive
fi

cmake -B cmake-build -DCMAKE_BUILD_TYPE=Release
if [ $? -eq 0 ]; then
    echo "Configure successful"
else
    echo "Configure failed"
    exit 1
fi
cmake --build cmake-build -j`nproc`

if [ $? -eq 0 ]; then
    echo "Build successful"
else
    echo "Build failed"
    exit 1
fi

if [ "$1" = "archive" ] || [ "$2" = "archive" ] ; then
    mkdir -p archive
    tar cfz archive/vaporizer2-LV2-$PLUGIN_VERSION-x86_64.tar.gz -C cmake-build/VASTvaporizer2_artefacts/Release/LV2/ .
    tar cfz archive/vaporizer2-VST3-$PLUGIN_VERSION-x86_64.tar.gz -C cmake-build/VASTvaporizer2_artefacts/Release/VST3/ .
    tar cfz archive/vaporizer2-CLAP-$PLUGIN_VERSION-x86_64.tar.gz -C cmake-build/VASTvaporizer2_artefacts/Release/CLAP/ .
    tar cfz archive/vaporizer2-Standalone-$PLUGIN_VERSION-x86_64.tar.gz -C cmake-build/VASTvaporizer2_artefacts/Release/Standalone/ .
    tar cfz archive/vaporizer2-data-$PLUGIN_VERSION.tar.gz -C VASTvaporizer Noises Tables Presets
fi
