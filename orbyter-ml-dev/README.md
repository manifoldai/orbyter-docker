# manifoldai/orbyter-ml-dev:3.2

Dockerfile for [manifoldai/orbyter-ml-dev:3.2](https://hub.docker.com/r/manifoldai/orbyter-ml-dev)

## Usage

To run a bash shell

`
docker run -it manifoldai/orbyter-ml-dev:3.2 bash
`

## Release Notes:

Added `dvc==1.11.9` to `requirements.txt` to enable data versioning.

Added `mypy==0.790` for static type checking.

### Python package updates

#### Updated

* boto3==1.16.47
* coloredlogs==15.0
* dask[complete]==2020.12.0
* dvc==1.11.9
* isort==5.7.0
* jupyterlab==3.0.0
* lightgbm==3.1.1
* matplotlib==3.3.3
* mlflow==1.13.1
* more-itertools==8.6.0
* mypy==0.790
* notebook==6.1.6
* numpy==1.19.4
* pandas==1.2.0
* plotly==4.14.1
* pytest==6.2.1
* python-dotenv==0.15.0
* pytictoc==1.5.1
* scikit-learn==0.24.0
* scipy==1.6.0
* seaborn==0.11.1
* shap==0.37.0
* Sphinx==3.4.1
* SQLAlchemy==1.3.22
* statsmodels==0.12.1
* streamlit==0.73.1
* tqdm==4.55.0
* xarray==0.16.2
* xgboost==1.3.1

## Image overview

For a complete list all packages, run `pip freeze` in a container. Below is a summary of
the useful packages for ML development.

System:

* Ubuntu 20.04 LTS
* Python 3.8.5

## Included Packages :
* bayesian-optimization==1.2.0
* black==20.8b1
* boto3==1.16.47
* click==7.1.2
* coloredlogs==15.0
* dask[complete]==2020.12.0
* dask-ml==1.7.0
* dvc==1.11.9
* flake8==3.8.4
* ipdb==0.13.4
* isort==5.7.0
* jsonlines==1.2.0
* jupyter==1.0.0
* jupyter-contrib-nbextensions==0.5.1
* jupyterlab==3.0.0
* lightgbm==3.1.1
* matplotlib==3.3.3
* mlflow==1.13.1
* more-itertools==8.6.0
* mypy==0.790
* notebook==6.1.6
* numpy==1.19.4
* pandas==1.2.0
* plotly==4.14.1
* pluggy==0.13.1
* psycopg2==2.8.6
* pyarrow==2.0.0
* pytest==6.2.1
* python-dotenv==0.15.0
* pytictoc==1.5.1
* scikit-learn==0.24.0
* scipy==1.6.0
* seaborn==0.11.1
* shap==0.37.0
* Sphinx==3.4.1
* SQLAlchemy==1.3.22
* statsmodels==0.12.1
* streamlit==0.73.1
* tqdm==4.55.0
* xarray==0.16.2
* xgboost==1.3.1