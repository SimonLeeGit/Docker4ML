# Docker4ML
Useful docker scripts for ML developement.
[https://github.com/SimonLeeGit/Docker4ML](https://github.com/SimonLeeGit/Docker4ML)

## Build Docker Image

```
bash docker_build.sh
```

![build_docker](build_docker.png)


## Run Docker Container as Development Envirnoment

```
bash docker_run.sh
```

![run_docker](run_docker.png)


## Custom Docker Config

### Config [setup_env.sh]
You can modify this file to custom your settings.

```
TAG=simon/ml:dev
NVIDIA_PYTORCH_TAG=23.12-py3
```

#### TAG
Your built docker image tag, you can set it as what you what.

#### NVIDIA_PYTORCH_TAG
The base docker image tag for your built docker image, here we use nvidia pytorch images.
You can check it from [https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch/tags](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch/tags)


### Config [requriements.txt]

You can add your default installed python libraries here.

```
transformers==4.27.1
```

By default, it has some libs installed, you can check it from [https://docs.nvidia.com/deeplearning/frameworks/pytorch-release-notes/rel-24-01.html](https://docs.nvidia.com/deeplearning/frameworks/pytorch-release-notes/rel-24-01.html)
