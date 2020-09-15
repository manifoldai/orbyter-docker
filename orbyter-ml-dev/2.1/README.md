# manifoldai/orbyter-ml-dev:2.1

Dockerfile for [manifoldai/orbyter-ml-dev:2.1](https://hub.docker.com/r/manifoldai/orbyter-ml-dev)

## Usage

To run a bash shell

`
docker run -it manifoldai/orbyter-ml-dev:2.1 bash
`

## Release Notes:

Now using `orbyter-base-sys:2.0` as a base image. 

### Python package updates

#### Removed

cufflinks==0.16

#### Updated

boto3==1.14.61
mlflow==1.11.0
pandas==1.1.2
seaborn==0.11.0
streamlit==0.66.0

## Image overview

For a complete list all packages, run `pip freeze` in a container. Below is a summary of
the useful packages for ML development.

System:

* Ubuntu 18.04.3 LTS
* Python 3.7.5

## Included Packages :

* bayesian-optimization==1.0.1
* black==19.3b0
* bokeh==1.3.4
* boto3==1.14.61
* Click==7.0
* coloredlogs==10.0
* dask[complete]==2.4.0
* dask-ml==1.0.0
* dlib==19.17.0
* fire==0.2.1
* flake8==3.7.8
* ipdb==0.12.2
* isort==4.3.21
* jsonlines==1.2.0
* jupyter==1.0.0
* jupyter-contrib-nbextensions==0.5.1
* lightgbm==2.2.3
* matplotlib==3.1.1
* mlflow==1.11.0
* more-itertools==7.2.0
* notebook==6.0.2
* numpy==1.17.2
* pandas==1.1.2
* plotly==4.1.1
* pluggy==0.13.0
* psycopg2==2.8.3
* pyarrow==0.14.1
* pytest==5.1.3
* python-dotenv==0.10.1
* pytictoc==1.5.0
* scikit-learn==0.21.3
* scipy==1.3.1
* seaborn==0.11.0
* shap==0.30.1
* Sphinx==2.0.1
* statsmodels==0.10.1
* streamlit==0.66.0
* SQLAlchemy==1.3.2
* xarray==0.13.0
* xgboost==0.90

