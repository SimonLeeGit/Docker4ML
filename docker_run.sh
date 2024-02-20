#!/usr/bin/env bash

WORK_DIR=$(dirname "$(readlink -f "$0")")
source $WORK_DIR/setup_env.sh

ID=$(docker run \
    --rm \
    --gpus all \
    -itd \
    --ipc=host \
    --ulimit memlock=-1 \
    --ulimit stack=67108864 \
    -p 6006:6006 \
    -v $PWD:/workspace \
    -w /workspace \
    $TAG)

docker logs $ID

echo ' '
echo ' '
echo '========================================='
echo ' '

docker exec -it $ID bash
