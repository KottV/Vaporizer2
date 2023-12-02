#!/bin/bash -e
set -x

gh release create "$GITHUB_REF_NAME" -F ./Binaries/*.tar.gz
