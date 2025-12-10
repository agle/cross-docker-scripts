#!/bin/bash

source $(dirname $0)/dockercmd.sh
CONT="$(./start-container.sh)"
$DOCKER exec -it $CONT bash

