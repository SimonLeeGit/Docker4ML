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
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
    -v $PWD:/workspace \
    -w /workspace \
    $(cat $WORK_DIR/ports.txt) \
    $TAG)

docker logs $ID

echo ' '
echo ' '
echo '========================================='
echo ' '

docker exec -it $ID bash
