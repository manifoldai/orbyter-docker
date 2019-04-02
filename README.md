Manifold's Orbyter docker image toolset to help Data Science teams easily move to a container-first workflow from local development to serving in production settings. The goal of these
tools is to bring DevOps best practices to the Data Science community to increase productivity and quality of delivered worked to
customers (internal and external).

# Docker images

The various docker images are tagged by their repository name under their parent directory. E.g., The Dockerfile for docker-ml-dev:1.0 corresponds to docker-ml-dev/1.0/Dockerfile

## docker-ml-dev

This is currently the base development image used in conjunction with [docker-cookiecutter-datascience](https://github.com/manifoldai/docker-cookiecutter-data-science).

## orbyter-base-sys

Base docker image for ML development

## orbyter-base-sys-dl

Base docker image for DL development, which contains CUDA libraries

## orbyter-ml-dev

Docker image for ML development

## orbyter-dl-dev

Docker image for DL development
