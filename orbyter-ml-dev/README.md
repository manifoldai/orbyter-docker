# manifoldai/orbyter-ml-dev

Dockerfile for [manifoldai/orbyter-ml-dev](https://hub.docker.com/r/manifoldai/orbyter-ml-dev)

## Usage

To run a bash shell

`docker run -it manifoldai/orbyter-ml-dev:latest bash`

## Image overview

For a complete list all packages, run `pip freeze` in a container. For a list of the useful packages for ML development, see [requirements-dev.txt](../requirements-dev.txt).

### System

- Debian 11.2 "Bullseye"
- Python 3.11.6
- ~~Node.js v16~~

| Category          | Notable packages                                                      |
| ----------------- | --------------------------------------------------------------------- |
| Programming tools | `black`, `flake8`, `isort`, `mypy`, `pytest`, `ipdb`, `line-profiler` |
| AWS               | `awscli`, `boto3`                                                     |
| Numeric           | `numpy`, `pandas`                                                     |
| Visualization     | `matplotlib`, `plotly`                                                |
| ML                | `lightgbm`, `scikit-learn`, `statsmodels`, `xgboost`                  |
| Deep learning:    |                                                                       |
| NLP:              |                                                                       |
| MLOps             | `mlflow`, `dvc`                                                       |
| Documentation     | `Sphinx`                                                              |
| Other             | `Dask`, `streamlit`                                                   |

---

## Release Notes

### 5.0.0

- Use shared `requirements` file

### 4.2.1

- Use the base image `orbyter-base-sys:4.2`

### 4.2

- Added Jupyterlab collaboration packages `jupyter_server` and `jupyterlab-link-share`

### 4.1

- Use the base image `orbyter-base-sys:4.1`

### 4.0

- Use the base image `orbyter-base-sys:4.0`

- Updated the OS image from Ubuntu 20.04 LTS to Debian 11.2 "Bullseye"
- Updated Python version from 3.8.5 to 3.10.4
- Updated Node.js version from v12 to v16
- Updated packages
- Added `mypy` type stubs for all currently-installed packages that are in the [Typeshed](https://github.com/python/typeshed)
- Added extension for auto-formatting Jupyter notebooks with `black` using the cell magic: `%load_ext lab_black`
- Removed `dask-cloudprovider`, has been too slow to stay up-to-date and has ongoing issues with properly tearing down infrastructure.

### 3.5.5

- The `orbyter-ml-dev:3.5` tag will point to this patched version.
- Updated `mlflow` to 1.23.1 for security patch.

### 3.5.4

- Updated `jupyterlab` to 3.0.17 for security patch.

### 3.5.3

- Added graphviz system library. Added graphviz and snakeviz python packages

### 3.5.2

- Updated `dask-cloudprovider` package to include the AWS subpackage and added the `s3fs` and `awscli` packages for better integration with AWS services. Updated `dvc==2.4.1` and reverted back to `boto3==1.17.49` for package compatibility reasons.
- Added `s3fs` and `awscli`

### 3.5.1

- Roll back to `mypy==0.812` to avoid breaking changes made to how certain third party types are defined, which caused CI to fail for 3.5.0 images without additional packages.

### 3.5.0

- Updated `jupyterlab==3.0.16` and others, added `dask-cloudprovider==2021.3.1` and `dask-labextension==5.0.2` for distributed computing, and `aquirdturtle-collapsible-headers==3.1.0` Jupyterlab extension for Jupyter notebook style folding of headers.
- Added `aquirdturtle-collapsible-headings`, `dask-cloudprovider`, `dask-labextension`

### 3.4

- Upgrade isort to `5.8.0` and add `line_profiler`.

### 3.3

- Pin `ipython==7.20.0` to avoid `jedi` autocompletion bug with earlier versions
- Updated all Python packages.

### 3.2

- Updated all Python packages.
- Added `dvc`, `mypy`
