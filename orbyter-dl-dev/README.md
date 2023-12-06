# manifoldai/orbyter-dl-dev

Dockerfile for [manifoldai/orbyter-dl-dev](https://hub.docker.com/r/manifoldai/orbyter-dl-dev): Manifold's Deep Learning Docker image.
This image provides CUDA drivers for NVIDIA GPU support, thus limiting the platform/architecture.

## Usage

To run a bash shell

`docker run -it manifoldai/orbyter-dl-dev:latest bash`

## Release Notes

The changes in this image should follow [orbyter-ml-dev](../orbyter-ml-dev/README.md) closely. Changes specific to the DL image (including the base NVIDIA image) should be noted below.

### 5.0.0

- Use shared `requirements` file

### 4.2.1

- Updated to Python 3.11

### 4.2

Adds Jupyterlab collaboration packages:

- `jupyter_server`
- `jupyterlab-link-share`

### 4.1

- Updated NVIDIA base image to Ubuntu 22.04, CUDA 11.8
- Updated to Python 3.10

### 3.2

- Updated NVIDIA base image to Ubuntu 20.04, CUDA 11.2.1
- Updated to Python 3.8
