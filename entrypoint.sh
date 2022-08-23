#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

curl api.ipify.org

# Start server
pushd /webminerpool
./Server