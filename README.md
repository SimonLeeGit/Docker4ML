# Docker4ML

Useful docker scripts for ML developement.
[https://github.com/SimonLeeGit/Docker4ML](https://github.com/SimonLeeGit/Docker4ML)

## Build Docker Image

You can build your development docker image as below.

```bash
bash build.sh
```

![build_docker](./doc/build_docker.png)

## Run Docker Container as Development Envirnoment

You can run built development docker container as your development environment as below.

```bash
bash run.sh
```

![run_docker](./doc/run_docker.png)

## Build CI Docker Image

You can also build a CI docker image for your app to be runned at cloud environment.

```bash
bash build_ci.sh
```

![build_docker_ci](./doc/build_docker_ci.png)

## Run CI Docker Container at cloud envirnoment

```bash
bash run_ci.sh <cmd>

# <cmd> is your custom command to be runned in CI docker container, such as:
#
# bash run_ci.sh echo "hello world"
# bash run_ci.sh python test.py, the work dir is your git repo root
```

![run_docker_ci](./doc/run_docker_ci.png)

## Custom Docker Config

### Config [setup_env.sh](./conf/setup_env.sh)

You can modify this file to custom your settings.

```bash
# Docker tag for new build image
TAG=ml:dev

# Base docker image tag used by docker build
BASE_TAG=nvcr.io/nvidia/pytorch:24.01-py3

# User name used in docker container
USER_NAME=developer

# User password used in docker container
USER_PASSWD=666666
```

#### TAG

Your built docker image tag, you can set it as what you what.

#### BASE_TAG

The base docker image tag for your built docker image, here we use nvidia pytorch images.
You can check it from [https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch/tags](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch/tags)

### USER_NAME

Your user name used in docker container.

### USER_PASSWD

Your user password used in docker container.

### Config [requriements.txt](./conf/requirements.txt)

You can add your default installed python libraries here.

```txt
transformers==4.27.1
```

By default, it has some libs installed, you can check it from [https://docs.nvidia.com/deeplearning/frameworks/pytorch-release-notes/rel-24-01.html](https://docs.nvidia.com/deeplearning/frameworks/pytorch-release-notes/rel-24-01.html)

### Config [packages.txt](./conf/packages.txt)

You can add your default apt-get installed packages here.

```txt
wget
curl
```

### Config [ports.txt](./conf/ports.txt)

You can add some ports enabled for docker container here.

```txt
-p 6006:6006
-p 8080:8080
```

### Config [*installscript.sh]

- [preinstallscript.sh](./conf/preinstallscript.sh): executed before pip installation
- [postinstallscript.sh](./conf/postinstallscript.sh): executed after pip installation

You can add your custom script to run when build docker image.

## Q&A

If you have any use problems, please contact to <simonlee235@gmail.com>.
