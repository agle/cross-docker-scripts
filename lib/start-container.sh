#!/bin/bash

set -xe
source "$(dirname "$0")/dockercmd.sh"

if $DOCKER ps | grep 'arm64-cross-container' -q; then
  $DOCKER ps | grep 'arm64-cross-container' | cut -f1 -d' '
else
  if $DOCKER container list -a | grep 'arm64-cross-container' -q ; then
    $DOCKER container start 'arm64-cross-container' > /dev/null
    $DOCKER ps | grep 'arm64-cross-container' | cut -f1 -d' '
  else
    $DOCKER run -d --name arm64-cross-container ghcr.io/uq-pac/basil-tv-artifact:latest sleep infinity
  fi
fi

