#!/bin/bash -e
set -x
PLUGIN_VERSION=$(cat VERSION)

gh release create "$PLUGIN_VERSION" ./Binaries/*.tar.gz
