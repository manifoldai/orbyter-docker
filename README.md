# manifold/orbyter-docker

Manifold's Orbyter Docker image toolset helps data science teams easily move to a
container-first workflow, from local development to serving in production settings. The
goal of these tools is to bring DevOps and software engineering best practices to the data science
community to increase productivity and quality of delivered work to customers (internal and
external). Several Dockerhub repositories are represented in this code repository:
`manifoldai/docker-ml-dev`, `manifoldai/docker-dl-dev`, ...., all of which are listed
below.

## General structure

Each docker image (dockerhub repo) has a folder with the following file structure:

```bash
orbyter-docker/
├── docker-repo/          # e.g, docker-ml-dev
│   ├── Dockerfile        # Commands for building this image
│   ├── OVERVIEW.md       # Dockerhub image description
│   ├── README.md         # Additional image information
│   ├── VERSION           # See below
│   └── requirements.txt  # Packages unique to this image
└── requirements-dev.txt  # Packages installed on all dev images
```

All development images (i.e. non-base images) first install packages from `requirements-dev.txt` using pip.
Packages from the directory-specific `requirements.txt` are then installed.

## Versioning and tagging

Base images use major/minor (A.B) versioning.

Development images have A.B.C versioning to indicate that base image version A.B was used. The
requirements.txt file

The tip of master contains the latest version of each Docker image (`VERSION`). Each
repo VERSION is given a specific tag. To audit/compare previous versions, you need to
reference the image by its git tag.

Each given image release is marked by a git tag. The tagging convention is
`<image-name>-<version>`. For example, the git tag `tag:orbyter-ml-dev:5.1.2` corresponds to
version `5.1.2` of the image `orbyter-ml-dev` and it was built upon `orbyter-base-sys:5.1`.
Pushing a tag to GitHub will trigger a deployment of that image to Dockerhub.

## Image release steps

We'll describe how to release a new `orbyter-ml-dev`, but the steps are the same for other images.
Let's say we are releasing version `5.1.2` of `orbyter-ml-dev`.

1. Create a new branch, e.g, `gg/patch-mlflow-5.1.2`
1. Make changes to `Dockerfile`, `requirements.txt`, `README.md`, etc. and bump `VERSION` to
`5.1.2`. Note: you can test your new build by running `make build target=orbyter-ml-dev`
from the top-level directory
1. Create a pull request back into master.
1. When changes are merged to `master`, get the latest commit: `git checkout master`, `git pull`
1. Tag the code: `make release target=orbyter-ml-dev`. This will push the tag to origin and
kick-off a GitHub actions job that will push two new images to Dockerhub:
`manifoldai/orbyter-ml-dev:5.1.2` and `manifoldai/orbyter-ml-dev:latest`.

### Patching an image

In certain cases it may be necessary to delete a tag and add it again, retriggering deployment to Dockerhub.

```bash
# delete tag locally
git tag -d orbyter-image-name-1.1.1
# push deletion to github
git push origin :refs/tags/orbyter-image-name-1.1.1
# retag to trigger deployment
make release target=orbyter-image-name
```

## Docker images

### orbyter-base-sys

Base docker image for machine learning development in python. ML images are built on top
of this, and this should not be used directly for development. This base image contains
basic tools like vim, emacs, curl, and python, but does not install any ML specific
packages.

### orbyter-base-sys-dl

Base docker image for deep learning development in python, which contains CUDA
libraries. DL images are build on top of this, and this should not be used directly for
development. This base image, like `orbyter-base-sys`, contains basic tools like vim,
emacs, curl, and python. Because it contains the CUDA libraries, it is compatible with
many deep learning frameworks like PyTorch, but the platform architecture is limited.

### orbyter-ml-dev

Docker image for ML development in python which contains essential tools like jupyter,
pandas, numpy, and scikit-learn.

### orbyter-dl-dev

Docker image for CUDA/GPU-assisted deep learning development.

### orbyter-spark-dev

Docker image for ML projects with Apache Spark.

## Historical notes

Support for an MLFlow image was dropped. Use the official MLFlow image from Github Container Registry instead.

After commit `e039c36`, this repo was drastically reorganized. `<=e039c36`, each version
of each docker repositories image was given as a subfolder. E.g,

```bash
orbyter-ml-dev/
├── 3.1
│   ├── Dockerfile
│   └── ...
└── 3.2
    ├── Dockerfile
    └── ...
```
