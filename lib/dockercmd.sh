#!/bin/bash


if which  docker > /dev/null ; then
  DOCKER="docker"
else
  if which podman > /dev/null; then
    DOCKER="podman"
  else
    echo "could not find docker or podman: set DOCKER environment variable manually"
    exit 1
  fi
fi

