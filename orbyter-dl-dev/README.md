# manifoldai/orbyter-dl-dev:4.1

Dockerfile for [manifoldai/orbyter-dl-dev](https://hub.docker.com/r/manifoldai/orbyter-dl-dev): Manifold's Deep Learning docker image.
This image provides CUDA drivers for NVIDIA GPU support, thus limiting the platform/architecture.

## Usage

To run a bash shell

`docker run -it manifoldai/orbyter-dl-dev:3.2 bash`

## Release Notes:

The changes in this image should follow [orbyter-ml-dev](../orbyter-ml-dev/README.md) closely. Changes specific to the DL image (including the base NVIDIA image) should be noted below.

### 4.1
- Updated NVIDIA base image to Ubuntu 22.04, CUDA 11.8
- Updated Python to 3.10

### 3.2
- Updated NVIDIA base image to Ubuntu 20.04, CUDA 11.2.1
- Updated Python to 3.8