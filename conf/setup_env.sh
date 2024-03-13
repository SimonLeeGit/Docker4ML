# Docker tag for new build image
TAG=simon235/cuda:dev
CI_TAG=simon235/cuda:ci

# Base docker image tag used by docker build
BASE_TAG=nvcr.io/nvidia/cuda:12.3.2-runtime-ubuntu22.04

# User name used in docker container
USER_NAME=developer

# User password used in docker container
USER_PASSWD=666666

# Git repo for CI docker image
GIT_REPO=https://github.com/SimonLeeGit/Docker4ML.git

# Git branch for CI docker image
GIT_BRANCH=main