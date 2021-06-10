# manifoldai/orbyter-ml-dev:3.5

Dockerfile for [manifoldai/orbyter-ml-dev:3.5](https://hub.docker.com/r/manifoldai/orbyter-ml-dev)

## Usage

To run a bash shell

`docker run -it manifoldai/orbyter-ml-dev:3.5 bash`

## Image overview

For a complete list all packages, run `pip freeze` in a container. For a summary of
the useful packages for ML development, see [requirements.txt].

System:

- Ubuntu 20.04 LTS
- Python 3.8.5

### Included Packages :

- aquirdturtle-collapsible-headings==3.1.0
- bayesian-optimization==1.2.0
- black==21.5b2
- boto3==1.17.92
- click==7.1.2
- coloredlogs==15.0
- dask[complete]==2021.6.0
- dask-cloudprovider==2021.3.1
- dask-ml==1.9.0
- dvc==2.3.0
- flake8==3.9.2
- ipdb==0.13.9
- ipython==7.24.1
- isort==5.8.0
- jsonlines==2.0.0
- jupyter==1.0.0
- jupyter-contrib-nbextensions==0.5.1
- jupyterlab==3.0.16
- lightgbm==3.2.1
- line-profiler==3.3.0
- matplotlib==3.4.2
- mlflow==1.17.0
- more-itertools==8.8.0
- mypy==0.902
- notebook==6.4.0
- numpy==1.20.3
- pandas==1.2.4
- plotly==4.14.3
- pluggy==0.13.1
- psycopg2==2.8.6
- pyarrow==4.0.1
- pytest==6.2.4
- python-dotenv==0.17.1
- pytictoc==1.5.2
- scikit-learn==0.24.2
- scipy==1.6.3
- seaborn==0.11.1
- shap==0.39.0
- Sphinx==4.0.2
- SQLAlchemy==1.4.18
- statsmodels==0.12.2
- streamlit==0.82.0
- tqdm==4.61.0
- xarray==0.18.2
- xgboost==1.4.2

## Release Notes:

### 3.5

Updated `jupyterlab==3.0.16` and others, and added `dask-cloudprovider==2021.3.1` for distributed computing and `aquirdturtle-collapsible-headers==3.1.0` Jupyterlab extension for Jupyter notebook style folding of headers.

#### Python package updates

##### New

- aquirdturtle-collapsible-headings==3.1.0
- dask-cloudprovider==2021.3.1

##### Updated

- black==21.5b2
- boto3==1.17.92
- dask[complete]==2021.6.0
- dask-ml==1.9.0
- dvc==2.3.0
- flake8==3.9.2
- ipdb==0.13.9
- ipython==7.24.1
- lightgbm==3.2.1
- line-profiler==3.3.0
- matplotlib==3.4.2
- mlflow==1.17.0
- more-itertools==8.8.0
- mypy==0.902
- notebook==6.4.0
- numpy==1.20.3
- pandas==1.2.4
- pyarrow==4.0.1
- pytest==6.2.4
- python-dotenv==0.17.1
- pytictoc==1.5.2
- scikit-learn==0.24.2
- scipy==1.6.3
- shap==0.39.0
- Sphinx==4.0.2
- SQLAlchemy==1.4.18
- streamlit==0.82.0
- tqdm==4.61.0
- xarray==0.18.2
- xgboost==1.4.2

### 3.4

Upgrade isort to `5.8.0` and add `line_profiler`.

### 3.3

Pin `ipython==7.20.0` to avoid `jedi` autocompletion bug with earlier versions

#### Python package updates

##### Updated

- boto3==1.17.10
- dask[complete]==2021.02.0
- dvc==1.11.16
- ipython==7.20.0
- jsonlines==2.0.0
- jupyterlab==3.0.7
- matplotlib==3.3.4
- more-itertools==8.7.0
- mypy==0.800
- notebook==6.2.0
- numpy==1.20.1
- pandas==1.2.2
- plotly==4.14.3
- pyarrow==3.0.0
- pytest==6.2.2
- scikit-learn==0.24.1
- shap==0.38.1
- Sphinx==3.5.1
- SQLAlchemy==1.3.23
- statsmodels==0.12.2
- streamlit==0.76.0
- tqdm==4.56.2
- xgboost==1.3.3

### 3.2

Added `dvc==1.11.9` to `requirements.txt` to enable data versioning.

Added `mypy==0.790` for static type checking.

#### Python package updates

##### Updated

- boto3==1.16.47
- coloredlogs==15.0
- dask[complete]==2020.12.0
- dvc==1.11.9
- isort==5.7.0
- jupyterlab==3.0.0
- lightgbm==3.1.1
- matplotlib==3.3.3
- mlflow==1.13.1
- more-itertools==8.6.0
- mypy==0.790
- notebook==6.1.6
- numpy==1.19.4
- pandas==1.2.0
- plotly==4.14.1
- pytest==6.2.1
- python-dotenv==0.15.0
- pytictoc==1.5.1
- scikit-learn==0.24.0
- scipy==1.6.0
- seaborn==0.11.1
- shap==0.37.0
- Sphinx==3.4.1
- SQLAlchemy==1.3.22
- statsmodels==0.12.1
- streamlit==0.73.1
- tqdm==4.55.0
- xarray==0.16.2
- xgboost==1.3.1

### Image overview

For a complete list all packages, run `pip freeze` in a container. Below is a summary of
the useful packages for ML development.

System:

- Ubuntu 20.04 LTS
- Python 3.8.5

### Included Packages :

- bayesian-optimization==1.2.0
- black==20.8b1
- boto3==1.16.47
- click==7.1.2
- coloredlogs==15.0
- dask[complete]==2020.12.0
- dask-ml==1.7.0
- dvc==1.11.9
- flake8==3.8.4
- ipdb==0.13.4
- isort==5.7.0
- jsonlines==1.2.0
- jupyter==1.0.0
- jupyter-contrib-nbextensions==0.5.1
- jupyterlab==3.0.0
- lightgbm==3.1.1
- matplotlib==3.3.3
- mlflow==1.13.1
- more-itertools==8.6.0
- mypy==0.790
- notebook==6.1.6
- numpy==1.19.4
- pandas==1.2.0
- plotly==4.14.1
- pluggy==0.13.1
- psycopg2==2.8.6
- pyarrow==2.0.0
- pytest==6.2.1
- python-dotenv==0.15.0
- pytictoc==1.5.1
- scikit-learn==0.24.0
- scipy==1.6.0
- seaborn==0.11.1
- shap==0.37.0
- Sphinx==3.4.1
- SQLAlchemy==1.3.22
- statsmodels==0.12.1
- streamlit==0.73.1
- tqdm==4.55.0
- xarray==0.16.2
- # xgboost==1.3.1

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
