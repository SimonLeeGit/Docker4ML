#!/usr/bin/env bash

source setup_env.sh

docker build -t $TAG --build-arg NVIDIA_PYTORCH_TAG=$NVIDIA_PYTORCH_TAG . -f dockerfile.base
