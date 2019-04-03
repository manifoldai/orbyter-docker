# manifold/orbyter-docker 

Manifold's Orbyter docker image toolset is to help Data Science teams easily move to a container-first workflow from local development to serving in production settings. The goal of these
tools is to bring DevOps best practices to the Data Science community to increase productivity and quality of delivered worked to
customers (internal and external).

## Docker images

The various docker images are tagged by their repository name under their parent directory. E.g., The Dockerfile for docker-ml-dev:1.0 corresponds to docker-ml-dev/1.0/Dockerfile

### docker-ml-dev

This is currently the base development image used in conjunction with [docker-cookiecutter-datascience](https://github.com/manifoldai/docker-cookiecutter-data-science).

### orbyter-base-sys

Base docker image for ML development in python. ML images are build on top of this, and this should not be used directly for development.


### orbyter-base-sys-dl

Base docker image for DL development in python, which contains CUDA libraries. DL images are build on top of this, and this should not be used directly for development.

### orbyter-ml-dev

Docker image for ML development in python, which contains the essentially tools like jupyter, pandas, numpy, and scikit-learn.

### orbyter-dl-dev

Docker image for DL development. 

## Release info

The directories in the top level contain the different images. Within each directory are subdirectories of version releases, which should match [Manifold's Dockerhub](https://hub.docker.com/u/manifoldai/). For example, the Dockerfile for manifoldai/orbyter-ml-dev:1.2 is orbyter-ml-dev/1.2/Dockerfile. 

When build a new release, build a new directory. To install new packages, the Pipfile.lock needs to be updated. To update the Pipenv.lock, install packages in a running container using

`
pipenv install [my_package]
`

If it succeeds, the Pipfile *and* the Pipfile.lock will be updated.
`
