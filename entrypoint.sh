#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

# Check if $DOMAIN is set
if [ -z "$DOMAIN" ]; then
  echo -e "You did not set \$DOMAIN variable at run time. No certificate will be registered.\n"
  echo -e "If you want to define it on command line here is an example:\n"
  echo -e "docker run -d -p 80:80 -p 443:443 -e DOMAIN=example.com\n"

# Start server
pushd /webminerpool
./Server