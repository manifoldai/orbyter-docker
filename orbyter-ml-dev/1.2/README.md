# manifoldai/orbyter-ml-dev:1.2

Dockerfile for [manifoldai/orbyter-ml-dev:1.2](https://hub.docker.com/r/manifoldai/orbyter-ml-dev)

## Usage

To run a bash shell, 
`
docker run -it manifoldai/orbyter-ml-dev:1.2 -v $PWD:/mnt bash
`

## Release Notes:

In 1.2, we are switching from `pipenv` installs to `pip` install of a requirements file. 
While `pipenv` is a useful tool for building up virtual environments from the group up,
it can be difficult to add additional packages to a .lock file that hasn't been update
recently, which causes issues with the docker workflow. 

### Python package updates

Added: black, coloredlogs, isort, shap, cufflinks, xarray, fire

Removed: ptitprince, keras, zdict

### System

* /mnt added to PYTHONPATH

## Image overview
For a complete list all packages, run `pip freeze` in a container. Below is a summary of
the useful packages for ML development.

System:

* Ubuntu 16.04.4 LTS
* Python 3.6.5

Packages:

* black==19.3b0
* boto3==1.9.127
* Click==7.0
* coloredlogs==10.0
* cufflinks==0.14.6
* dask==1.1.5
* distributed==1.26.1
* fire==0.1.3
* flake8==3.7.7
* ipdb==0.12
* isort==4.3.16
* jsonlines==1.2.0
* jupyter==1.0.0
* jupyter-contrib-nbextensions==0.5.1
* lightgbm==2.2.3
* matplotlib==3.0.3
* more-itertools==7.0.0
* numpy==1.16.2
* pandas==0.24.2
* plotly==3.7.1
* pluggy==0.9.0
* pyarrow==0.13.0
* pytest==4.4.0
* python-dotenv==0.10.1
* scikit-learn==0.20.3
* scipy==1.2.1
* shap==0.28.5
* seaborn==0.9.0
* xgboost==0.82
