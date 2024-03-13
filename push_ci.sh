#!/usr/bin/env bash

WORK_DIR=$(dirname "$(readlink -f "$0")")
source $WORK_DIR/conf/setup_env.sh

docker push $CI_TAG
