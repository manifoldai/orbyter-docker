# manifoldai/orbyter-ml-dev:4.0

Dockerfile for [manifoldai/orbyter-ml-dev:4.0](https://hub.docker.com/r/manifoldai/orbyter-ml-dev)

## Usage

To run a bash shell

`docker run -it manifoldai/orbyter-ml-dev:4.0 bash`

## Image overview

For a complete list all packages, run `pip freeze` in a container. For a summary of the useful packages for ML development, see [requirements.txt](requirements.txt).

### System:

- Debian 11.2 "Bullseye"
- Python 3.10.4
- Node.js v16

### Included Packages:

```
aquirdturtle-collapsible-headings==3.1.0
awscli==1.22.82
bayesian-optimization==1.2.0
black==22.1.0
nb-black==1.0.7
boto3==1.21.27
click==8.0.4
coloredlogs==15.0.1
dask[complete]==2022.3.0
dask-labextension==5.2.0
dask-ml==2022.1.22
dvc==2.9.5
flake8==4.0.1
graphviz==0.19.1
ipdb==0.13.9
ipython==8.1.1
isort==5.10.1
jsonlines==3.0.0
jupyter==1.0.0
jupyter-contrib-nbextensions==0.5.1
jupyterlab==3.3.2
lightgbm==3.3.2
line-profiler==3.5.0
matplotlib==3.5.1
mlflow==1.24.0
more-itertools==8.12.0
mypy==0.942
notebook==6.4.10
numpy==1.21.5
pandas==1.4.1
plotly==5.6.0
pluggy==1.0.0
psycopg==3.0.10
pyarrow==7.0.0
pytest==7.1.1
python-dotenv==0.20.0
pytictoc==1.5.2
s3fs==0.4.2
scikit-learn==1.0.2
scipy==1.8.0
seaborn==0.11.2
shap==0.40.0
snakeviz==2.1.1
Sphinx==4.4.0
SQLAlchemy==1.4.32
statsmodels==0.13.2
streamlit==1.8.0
tqdm==4.63.1
types-bleach==4.1.5
types-boto==2.49.10
types-cachetools==5.0.0
types-certifi==2021.10.8.1
types-click==7.1.8
types-colorama==0.4.9
types-cryptography==3.3.18
types-decorator==5.1.4
types-docutils==0.18.0
types-Flask==1.1.6
types-futures==3.3.8
types-itsdangerous==1.1.6
types-Jinja2==2.11.9
types-MarkupSafe==1.1.10
types-mypy-extensions==0.4.14
types-Pillow==9.0.8
types-protobuf==3.19.15
types-python-dateutil==2.8.10
types-python-slugify==5.0.3
types-pytz==2021.3.6
types-PyYAML==6.0.5
types-requests==2.27.14
types-six==1.16.12
types-tabulate==0.8.6
types-toml==0.10.4
types-tornado==5.1.1
types-tzlocal==4.1.0
types-urllib3==1.26.11
types-Werkzeug==1.0.9
xarray==2022.3.0
xgboost==1.5.2
```

## Release Notes:

### 4.0.0

The `orbyer-ml-dev:4.0` tag will point to this version.

Uses the base image `orbyter-base-sys:4.0`

- Updates the OS image from Ubuntu 20.04 LTS to Debian 11.2 "Bullseye"
- Updates Python version from 3.8.5 to 3.10.4
- Updated Node.js version from v12 to v16

#### Python package updates

##### New

- Added `mypy` type stubs for all currently-installed packages that are in the [Typeshed](https://github.com/python/typeshed)
- Added extension for auto-formatting Jupyter notebooks with `black` using the cell magic: `%load_ext lab_black`

```
nb-black==1.0.7
types-bleach==4.1.5
types-boto==2.49.10
types-cachetools==5.0.0
types-certifi==2021.10.8.1
types-click==7.1.8
types-colorama==0.4.9
types-cryptography==3.3.18
types-decorator==5.1.4
types-docutils==0.18.0
types-Flask==1.1.6
types-futures==3.3.8
types-itsdangerous==1.1.6
types-Jinja2==2.11.9
types-MarkupSafe==1.1.10
types-mypy-extensions==0.4.14
types-Pillow==9.0.8
types-protobuf==3.19.15
types-python-dateutil==2.8.10
types-python-slugify==5.0.3
types-pytz==2021.3.6
types-PyYAML==6.0.5
types-requests==2.27.14
types-six==1.16.12
types-tabulate==0.8.6
types-toml==0.10.4
types-tornado==5.1.1
types-tzlocal==4.1.0
types-urllib3==1.26.11
types-Werkzeug==1.0.9
```

##### Updated

```
awscli==1.22.82
black==22.1.0
boto3==1.21.27
click==8.0.4
coloredlogs==15.0.1
dask[complete]==2022.3.0
dask-labextension==5.2.0
dask-ml==2022.1.22
dvc==2.9.5
flake8==4.0.1
graphviz==0.19.1
ipython==8.1.1
isort==5.10.1
jsonlines==3.0.0
jupyterlab==3.3.2
lightgbm==3.3.2
line-profiler==3.5.0
matplotlib==3.5.1
mlflow==1.24.0
more-itertools==8.12.0
mypy==0.942
notebook==6.4.10
numpy==1.21.5
pandas==1.4.1
plotly==5.6.0
pluggy==1.0.0
psycopg==3.0.10
pyarrow==7.0.0
pytest==7.1.1
python-dotenv==0.20.0
s3fs==0.4.2
scikit-learn==1.0.2
scipy==1.8.0
seaborn==0.11.2
shap==0.40.0
snakeviz==2.1.1
Sphinx==4.4.0
SQLAlchemy==1.4.32
statsmodels==0.13.2
streamlit==1.8.0
tqdm==4.63.1
xarray==2022.3.0
xgboost==1.5.2
```

##### Removed

Dask CloudProvider has been too slow to stay up-to-date and has ongoing issues with properly tearing down infrastructure.

```
dask-cloudprovider[aws]==2021.3.1
```

### 3.5.5

The `orbyter-ml-dev:3.5` tag will point to this patched version.

Updates `mlflow` to 1.23.1 for security patch.

### 3.5.4

Updates `jupyterlab` to 3.0.17 for security patch.

### 3.5.3

Added graphviz system library. Added graphviz and snakeviz python packages

### 3.5.2

Updated `dask-cloudprovider` package to include the AWS subpackage and added the `s3fs` and `awscli` packages for better integration with AWS services. Updated `dvc==2.4.1` and reverted back to `boto3==1.17.49` for package compatibility reasons.

#### Python package updates

##### New

- s3fs==2021.6.1
- awscli==1.19.49

##### Updated

- boto3==1.17.49
- dask-cloudprovider[aws]==2021.3.1
- dvc==2.4.1

### 3.5.1

Roll back to `mypy==0.812` to avoid breaking changes made to how certain third party types are defined, which caused CI to fail for 3.5.0 images without additional packages.

#### Python package updates

##### Updated

- mypy==0.812

### 3.5.0

Updated `jupyterlab==3.0.16` and others, added `dask-cloudprovider==2021.3.1` and `dask-labextension==5.0.2` for distributed computing, and `aquirdturtle-collapsible-headers==3.1.0` Jupyterlab extension for Jupyter notebook style folding of headers.

#### Python package updates

##### New

- aquirdturtle-collapsible-headings==3.1.0
- dask-cloudprovider==2021.3.1
- dask-labextension==5.0.2

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
