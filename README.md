# manifold/orbyter-docker

Manifold's Orbyter docker image toolset helps Data Science teams easily move to a
container-first workflow, from local development to serving in production settings. The
goal of these tools is to bring DevOps and software engineering best practices to the Data Science community to
increase productivity and quality of delivered worked to customers (internal and
external). Several Dockerhub repositories are represented in this code repository:
`manifoldai/docker-ml-dev`, `manifoldai/docker-dl-dev`, ...., all of which are listed
below.

## General structure

Each docker image (dockerhub repo) has a folder with the following file structure:

```
docker-repo/ # e.g, docker-ml-dev
├── Dockerfile
├── README.md
├── VERSION
└── requirements.txt
```

The tip of master contains the latest version of each docker image (`VERSION`). Each
repo VERSION is given a specific tag. To audit/compare previous versions, you need to
reference the image by its git tag.

## Tagging

Each given image release is marked by a git tag. The tagging convention is
`<repo-name>-<version>`. For example, the git tag `tag:orbyter-ml-dev:3.5` corresponds to
version `3.5` of the image `orbyter-ml-dev`. Pushing a tag to github will trigger a deployment of
that image to docker hub.

## Image release steps

We'll describe how to release a new `orbyter-ml-dev`, but the steps are the same for other images.
Let's say we are releasing version `3.5` of `orbyter-ml-dev`.

1. Create a new branch, e.g, `mws/orbyter-ml-dev-3.5`
2. Make changes in `orbyter-ml-dev/`: `Dockerfile`, `requirements.txt`, `README.md`, and bump `VERSION` to
   `3.5`. Note, you can test your new build by running `make build-ml-dev` from the top-level directory
3. Create a pull request back into master.
4. When changes are merged to `master`, get the latest commit: `git checkout master`,
   `git pull`
5. Tag the code: `make release-ml-dev`. This will push the tag to origin and
   kick-off a GitHub actions job that will push two new images to
   `manifoldai/orbyter-ml-dev:3.5` and `manifoldai/orbyter-ml-dev:latest`.

## Docker images

### orbyter-base-sys

Base docker image for machine learning development in python. ML images are built on top
of this, and this should not be used directly for development. This base image contains
basic tools like vim, emacs, curl, and python, but does not install any ML specific
packages.

### orbyter-base-sys-dl

Base docker image for deep learning development in python, which contains CUDA
libraries. DL images are build on top of this, and this should not be used directly for
development. This base image, like orbyte-base-sys, contains basic tools like vim,
emacs, curl, and python. Because it contains the CUDA libraries, it is compatible with
many deep learning frameworks like pytorch.

### orbyter-ml-dev

Docker image for ML development in python, which contains the essentially tools like
jupyter, pandas, numpy, and scikit-learn.

### orbyter-dl-dev

Docker image for deep learning development.

### orbyter-spark-dev

Docker image for ML projects with Apache Spark.

## Historical notes

After commit `e039c36`, this repo was drastically reorganized. `<=e039c36`, each version
of each docker repositories image was given as a subfolder. E.g,

```
orbyter-ml-dev/
├── 3.1
│   ├── Dockerfile
│   ├── README.md
│   └── requirements.txt
└── 3.2
    ├── Dockerfile
    ├── README.md
    └── requirements.txt

```

While this structure provided nice auditability, it did not lend itself to continuous
deployment of new images, didn't scale well, and was challenging to code review.
Therefore, after commit `>e039c36`, we organized to only contain the latest version of
each docker repo.
