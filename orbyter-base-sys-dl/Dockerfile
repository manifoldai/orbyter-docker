FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
# This part below should be same as in orbyter-base-sys/2.x/Dockerfile
WORKDIR /build
ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
    python3.7=3.7.5-2~18.04 \
    python3-pip \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3.7-dev \
    vim \
    emacs \
    screen \
    git \
    wget \
    curl \
    cmake \
    htop 
# clean up. Need to change python3 to 3.7 or pip installs get confused
RUN rm -rf /var/lib/apt/lists/* && \
    rm -f /usr/bin/python3 && \
    rm -f /usr/bin/python3.6* && \
    rm -f /usr/bin/python && \
    ln -s /usr/bin/python3.7 /usr/bin/python3 && \
    ln -s /usr/bin/python3.7 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip && \
    rm -rf ~/.cache
## install pip libraries needed for most installs
RUN pip install wheel==0.33.6 && \
    pip install setuptools==42.0.2 && \
    pip install -U pip==19.3.1
WORKDIR /
RUN rm -rf /build
