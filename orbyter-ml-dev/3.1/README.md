# manifoldai/orbyter-ml-dev:3.1

Dockerfile for [manifoldai/orbyter-ml-dev:3.1](https://hub.docker.com/r/manifoldai/orbyter-ml-dev)

## Usage

To run a bash shell

`
docker run -it manifoldai/orbyter-ml-dev:3.0 bash
`

## Release Notes:

Now using `orbyter-base-sys:3.1` as a base image. 
Added JupyterLab extensions. TQDM works in JupyterLab notebooks now. 

### Python package updates

#### Updated

No packages were updated other than adding the JupyterLab extensions.

## Image overview

For a complete list all packages, run `pip freeze` in a container. Below is a summary of
the useful packages for ML development.

System:

* Ubuntu 20.04 LTS
* Python 3.8.5

## Included Packages :
* bayesian-optimization==1.2.0
* black==20.8b1
* boto3==1.16.4
* click==7.1.2
* coloredlogs==14.0
* dask[complete]==2.30.0 
* dask-ml==1.7.0
* flake8==3.8.4
* ipdb==0.13.4
* isort==5.6.4
* jsonlines==1.2.0
* jupyter==1.0.0
* jupyter-contrib-nbextensions==0.5.1
* jupyterlab==2.2.9
* lightgbm==3.0.0
* matplotlib==3.3.2
* mlflow==1.11.0
* more-itertools==8.5.0
* notebook==6.1.4
* numpy==1.19.2
* pandas==1.1.3
* plotly==4.12.0
* pluggy==0.13.1
* psycopg2==2.8.6
* pyarrow==2.0.0
* pytest==6.1.1
* python-dotenv==0.14.0
* pytictoc==1.5.1
* scikit-learn==0.23.2
* scipy==1.5.3
* seaborn==0.11.0
* shap==0.36.0
* Sphinx==3.2.1
* SQLAlchemy==1.3.20
* statsmodels==0.12.0
* streamlit==0.69.2
* tqdm==4.50.2
* xarray==0.16.1
* xgboost==1.2.1