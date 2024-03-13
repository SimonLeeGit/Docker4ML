#!/usr/bin/env bash

WORK_DIR=$(dirname "$(readlink -f "$0")")
source $WORK_DIR/conf/setup_env.sh

# Note:
#   Need to docker login first with your dockerhub username & password

# Push to docker hub
docker push $CI_TAG
