# manifoldai/orbyter-ml-dev:1.2

Dockerfile for [manifoldai/orbyter-ml-dev:1.2](https://hub.docker.com/r/manifoldai/orbyter-ml-dev)

## Usage

To run a bash shell, 
`
docker run -it manifoldai/orbyter-ml-dev:1.2 -v $PWD:/mnt bash
`

## Release Notes:

### Python package updates

Added: black, coloredlogs, ipdb
Removed: ptitprince, keras

### System

* /mnt added to PYTHONPATH

## Image overview
For a complete list all packages, see Pipfile and Pipfile.lock. Here is a summary of
the useful packages for ML development.

* Ubuntu 16.04.4 LTS
* Python 3.6.5
* black==19.3b0
* coloredlogs==10.0
* boto3==1.9.32
* dask==0.19.4
* distributed==1.23.3
* flake8==3.6.0
* ipdb==0.12
* ipython==7.4.0
* jupyter==1.0.0
* numpy==1.15.3
* lightgbm==2.2.3
* pandas==0.24.2
* plotly==3.3.0
* pyarrow==0.11.1
* scikit-learn==0.20.0
* scipy==1.1.0
* seaborn==0.9.0
* xgboost==0.80
