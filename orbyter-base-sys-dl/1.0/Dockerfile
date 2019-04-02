FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
# This part below should be same as in orbyter-base-sys/1.x/Dockerfile
# TODO is there a way to parameterize this?
COPY . /build
WORKDIR /build
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
      software-properties-common \
      python-software-properties && \
    add-apt-repository -y ppa:jonathonf/python-3.6 && \
    apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
      vim \
      emacs \
      screen \
      git \
      wget \
      curl \
      build-essential \
      cmake \
      htop \
      python3.6 \
      python3.6-dev \
      python3.6-venv \
      python3.6-tk \
      python3-pip && \
    rm -rf /var/lib/apt/lists/* && \
    rm -f /usr/bin/python3 && \
    rm -f /usr/bin/python && \
    ln -s /usr/bin/python3.6 /usr/bin/python3 && \
    ln -s /usr/bin/python3.6 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip && \
    rm -rf ~/.cache
WORKDIR /
RUN rm -rf /build
