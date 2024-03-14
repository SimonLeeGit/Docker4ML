#!/usr/bin/env bash

WORK_DIR=$(dirname "$(readlink -f "$0")")
DOCKER_USER=

# include config
source $WORK_DIR/conf/setup_env.sh

# help info
usage() {
    echo ""
    echo "Usage: $0 [-h] [-u <docker_username>] <positional-arg>"
    echo ""
    echo " -h: show help about usage"
    echo " -u: docker username"
    echo ""
    exit 1
}

# Use getopt to parse command-line options
OPTSTRING=":u:h"
while getopts ${OPTSTRING} opt; do
  case ${opt} in
    u)
      echo "use docker user: ${OPTARG}"
      DOCKER_USER=${OPTARG}/
      ;;
    h)
      usage
      ;;
    :)
      echo "Option -${OPTARG} requires an argument."
      usage
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      usage
      ;;
  esac
done
shift $((OPTIND - 1))

# build developement docker image
pushd $WORK_DIR/conf
docker build -t $DOCKER_USER$TAG --build-arg BASE_IMG=$BASE_IMG --build-arg USER_NAME=$USER_NAME --build-arg USER_PASSWD=$USER_PASSWD . -f $WORK_DIR/dockerfile/dockerfile.base
popd
