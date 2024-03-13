# Docker tag for new build image
TAG=ml:dev
CI_TAG=ml:ci

# Base docker image tag used by docker build
BASE_TAG=nvcr.io/nvidia/pytorch:24.01-py3

# User name used in docker container
USER_NAME=developer

# User password used in docker container
USER_PASSWD=666666

# Git repo for CI docker image
GIT_REPO=https://github.com/SimonLeeGit/Docker4ML.git

# Git branch for CI docker image
GIT_BRANCH=main