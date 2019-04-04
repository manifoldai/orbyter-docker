# manifold/orbyter-docker 

Manifold's Orbyter docker image toolset is to help Data Science teams easily move to a container-first workflow from local development to serving in production settings. The goal of these
tools is to bring DevOps best practices to the Data Science community to increase productivity and quality of delivered worked to
customers (internal and external).

## Docker images

The various docker images are tagged by their repository name under their parent directory. E.g., The Dockerfile for docker-ml-dev:1.0 corresponds to docker-ml-dev/1.0/Dockerfile

### docker-ml-dev

This is currently the base development image used in conjunction with [docker-cookiecutter-datascience](https://github.com/manifoldai/docker-cookiecutter-data-science).

### orbyter-base-sys

Base docker image for machine learning development in python. ML images are build on top of this, and this should not be used directly for development. This base image contains basic tools like vim, emacs, curl, and python, but does not install any ML specific packages.


### orbyter-base-sys-dl

Base docker image for deep learning development in python, which contains CUDA libraries. DL images are build on top of this, and this should not be used directly for development. This base image, like orbyte-base-sys, contains basic tools like vim, emacs, curl, and python. Because it contains the CUDA libraries, it is compatible with many deep learning frameworks like pytorch.


### orbyter-ml-dev

Docker image for ML development in python, which contains the essentially tools like jupyter, pandas, numpy, and scikit-learn.

### orbyter-dl-dev

Docker image for DL development. 

## Release info

[The](The) directories in the top level contain the different images. Within each directory are subdirectories of version releases, which should match [Manifold's Dockerhub](https://hub.docker.com/u/manifoldai/). For example, the Dockerfile for manifoldai/orbyter-ml-dev:1.2 is orbyter-ml-dev/1.2/Dockerfile. 


### Building a new release

When building a new release, make a new directory. Update a requirements file only with top level modules. To build the image, `cd` into the new release image directory and run

`
docker build -t local_image_name:local_tag .
`

To tag the local image to a remote repo (in order to push to docker hub) run:

`
docker tag local_image_name:local_tag remote_repo/remote_image_name:remote_tag 
`

And push to dockerhub

`
docker push remote_repo/remote_image_name:remote_tag 
`
