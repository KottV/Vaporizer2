#!/usr/bin/bash

PLUGIN_VERSION=$(cat VERSION)

if [ "$1" = "ci" ]; then
git submodule update --init --recursive
fi
cmake -B cmake-build -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build -j`nproc`

if [ $? -eq 0 ]; then
    echo "Build successful"
else
    echo "Build failed"
    exit 1
fi

if [ "$1" = "archive" ] || [ "$2" = "archive" ] ; then
    mkdir -p archive
    tar cfz archive/VASTvaporizer2-LV2-$PLUGIN_VERSION-beta-x86_64.beta.tar.gz -C cmake-build/VASTvaporizer2_artefacts/Release/LV2/ .
    tar cfz archive/VASTvaporizer2-VST3-$PLUGIN_VERSION-beta-x86_64.tar.gz -C cmake-build/VASTvaporizer2_artefacts/Release/VST3/ .
    tar cfz archive/VASTvaporizer2-Standalone-$PLUGIN_VERSION-beta-x86_64.tar.gz -C cmake-build/VASTvaporizer2_artefacts/Release/Standalone/ .

    tar cfz archive/VASTvaporizer2-data-$PLUGIN_VERSION-beta.tar.gz -C VASTvaporizer Noises Tables Presets
fi
