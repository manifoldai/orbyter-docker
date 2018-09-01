This base development image is used in conjunction with the [docker-cookiecutter-datascience](https://github.com/manifoldai/docker-cookiecutter-data-science)
as part of the Orbyter toolset to help Data Science teams easily move to a container-first workflow from local development to serving in production settings. The goal of these
tools is to bring DevOps best practices to the Data Science community to increase productivity and quality of delivered worked to
customers (internal and external).

System/package info:

- Ubuntu 16.04 (base image ubuntu:xenial-2018228)
- Python 3.6.3
- boto3 1.7.2
- dask 0.17.2
- distributed 1.21.6
- jupyter 1.0.0
- jupyter-contrib-nbextensions 0.5.0
- keras 2.1.5
- matplotlib 2.2.2
- numpy 1.14.2
- pandas 0.22.0
- scikit-learn 0.19.1
- scipy 1.0.1
- tensorflow 1.6.0

Additional Dockerfiles for different use cases will be added to this repository as work continues on the Orbyter project.
