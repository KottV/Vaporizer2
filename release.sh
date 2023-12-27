#!/bin/bash -e

set -x

PLUGIN_VERSION=$(cat VERSION)

gh release view v$PLUGIN_VERSION --repo=https://github.com/VASTDynamics/Vaporizer2/ --json=body|jq -r 'to_entries[] | .value' >/tmp/release.notes
gh release create "$PLUGIN_VERSION" -F /tmp/release.notes ./Binaries/*.tar.gz
