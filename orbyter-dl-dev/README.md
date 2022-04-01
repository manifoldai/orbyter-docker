# manifoldai/orbyter-dl-dev:3.2

Dockerfile for [manifoldai/orbyter-dl-dev:3.2](https://hub.docker.com/r/manifoldai/orbyter-dl-dev): Manifold's DL docker image.

## Usage

To run a bash shell

`docker run -it manifoldai/orbyter-dl-dev:3.2 bash`

## Release Notes:

### 3.2.2

The `orbyter-dl-dev:3.2` tag will point to this patched version.

Updates `mlflow` to 1.23.1 for security patch.

### 3.2.1

Updates `jupyterlab` to 3.0.17 for security patch.

### 3.2

Now using `orbyter-base-sys-dl:3.2` as a base image.

### Python package updates

#### Removed

#### Updated

- bayesian-optimization==1.2.0
- black==19.3b0
- bokeh==2.2.3
- boto3==1.16.60
- Click==7.1.2
- coloredlogs==15.0
- dask[complete]==2021.1.1
- dask-ml==1.7.0
- dlib==19.21.1
- fastai==2.2.5
- Keras==2.3.0
- fire==0.4.0
- flake8==3.8.4
- ipdb==0.13.4
- isort==5.7.0
- jsonlines==2.0.0
- jupyter==1.0.0
- jupyter-contrib-nbextensions==0.5.1
- lightgbm==3.1.1
- matplotlib==3.3.3
- mlflow==1.13.1
- more-itertools==8.6.0
- notebook==6.2.0
- numpy==1.19.5
- pandas==1.2.1
- plotly==4.14.3
- pluggy==0.13.1
- psycopg2==2.8.6
- pyarrow==3.0.0
- pytest==6.2.2
- python-dotenv==0.15.0
- pytictoc==1.5.1
- scikit-learn==0.24.1
- scipy==1.6.0
- seaborn==0.11.1
- shap==0.38.1
- Sphinx==3.4.3
- statsmodels==0.12.1
- streamlit==0.75.0
- SQLAlchemy==1.3.22
- tensorflow==2.4.1
- torch==1.7.1
- xarray==0.16.2
- xgboost==1.3.3

#### Added

dvc==0.11.3
jupyterlab==3.0.5

## Image overview

For a complete list all packages, run `pip freeze` in a container. Below is a summary of
the useful packages for ML development.

System:

- Ubuntu 20.04 LTS
- Python 3.8.5

## Included Packages :

- bayesian-optimization==1.2.0
- black==19.3b0
- bokeh==2.2.3
- boto3==1.16.60
- Click==7.1.2
- coloredlogs==15.0
- dask[complete]==2021.1.1
- dask-ml==1.7.0
- dlib==19.21.1
- dvc==1.11.13
- fastai==2.2.5
- Keras==2.3.0
- fire==0.4.0
- flake8==3.8.4
- ipdb==0.13.4
- isort==5.7.0
- jsonlines==2.0.0
- jupyter==1.0.0
- jupyter-contrib-nbextensions==0.5.1
- jupyterlab==3.0.5
- lightgbm==3.1.1
- matplotlib==3.3.3
- mlflow==1.13.1
- more-itertools==8.6.0
- notebook==6.2.0
- numpy==1.19.5
- pandas==1.2.1
- plotly==4.14.3
- pluggy==0.13.1
- psycopg2==2.8.6
- pyarrow==3.0.0
- pytest==6.2.2
- python-dotenv==0.15.0
- pytictoc==1.5.1
- scikit-learn==0.24.1
- scipy==1.6.0
- seaborn==0.11.1
- shap==0.38.1
- Sphinx==3.4.3
- statsmodels==0.12.1
- streamlit==0.75.0
- SQLAlchemy==1.3.22
- tensorflow==2.4.1
- torch==1.7.1
- xarray==0.16.2
- xgboost==1.3.3
