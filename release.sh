#!/bin/bash -e
set -x

gh release create "$GITHUB_REF" ./Binaries/*.tar.gz
