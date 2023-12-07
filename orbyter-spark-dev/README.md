# manifoldai/orbyter-spark-dev

Dockerfile for [manifoldai/orbyter-spark-dev](https://hub.docker.com/r/manifoldai/orbyter-spark-dev)

## Usage

To run a bash shell

`docker run -it manifoldai/orbyter-spark-dev:4.2 bash`

## Release Notes

The changes in this image follow [orbyter-ml-dev](../orbyter-ml-dev/README.md) closely. See that directory or [orbyter-base-sys](../orbyter-base-sys/README.md)
for information about the system or packages. Additional changes specific to this image are noted below.

### 5.0.0

- Use shared `requirements` file
- Update Spark to 3.3.3
- Update spark-nlp to 5.1.4

### 4.1

- Updated to Spark 3.3.1
- Updated to Hadoop 3.3

### 0.1.1

- Updated to Spark 3.1.1
- Updated to Hadoop 2.7
