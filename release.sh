#!/bin/bash -e
set -x

gh release create "$GITHUB_REF_NAME" ./Binaries/*.tar.gz
