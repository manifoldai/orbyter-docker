# manifoldai/orbyter-spark-dev:0.1

Dockerfile for [manifoldai/orbyter-spark-dev](https://hub.docker.com/r/manifoldai/orbyter-spark-dev)

## Usage

To run a bash shell

`docker run -it manifoldai/orbyter-spark-dev:latest bash`

## Image overview

For a complete list all packages, run `pip freeze` in a container. For a list of the useful packages for ML development, see [requirements.txt](requirements.txt).

System:

- Debian 11.2 "Bullseye"
- Python 3.10.8
- Spark, PySpark
- Hadoop

## Release Notes:

The changes in this image should follow [orbyter-ml-dev](../orbyter-ml-dev/README.md) closely. Changes specific to this image should be noted below.

### 4.1

- Updated to Spark 3.3.1
- Updated to Hadoop 3.3

### 0.1.1

- Updated to Spark 3.1.1
- Updated to Hadoop 2.7
