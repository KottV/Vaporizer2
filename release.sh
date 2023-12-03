#!/bin/bash -e
set -x
PLUGIN_VERSION=$(cat VERSION)

gh release create "$PLUGIN_VERSION" -F CHANGELOG.md ./Binaries/*.tar.gz
