#!/usr/bin/env bash

WORK_DIR=$(dirname "$(readlink -f "$0")")
cd $WORK_DIR

source setup_env.sh

docker build -t $TAG --build-arg BASE_TAG=$BASE_TAG . -f dockerfile.base
