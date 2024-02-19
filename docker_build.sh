#!/usr/bin/env bash

WORK_DIR=$(dirname "$BASH_SOURCE")
cd $WORK_DIR

source setup_env.sh

docker build -t $TAG --build-arg NVIDIA_PYTORCH_TAG=$NVIDIA_PYTORCH_TAG . -f dockerfile.base
