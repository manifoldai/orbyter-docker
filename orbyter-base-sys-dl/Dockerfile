# orbyter-base-sys-dl
FROM --platform=linux/amd64 nvidia/cuda:11.8.0-devel-ubuntu22.04
# Most commands below should match orbyter-base-sys/Dockerfile
WORKDIR /build
ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    TZ=America/Los_Angeles
# The time zone avoids prompts during cmake install
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
    build-essential \
    g++ \
    gnupg \
    libssl-dev \
    libffi-dev \
    vim \
    emacs \
    screen \
    git \
    wget \
    curl \
    cmake \
    htop \
    rsync
# Install python
RUN apt install software-properties-common -y && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt install python3.11 -y && \
    apt install python3-pip -y && \
    apt install python-is-python3 -y
# Cleanup
RUN apt-get autoremove -y && apt-get clean -y && \ 
    rm -rf /var/lib/apt/lists/* && \
    rm -rf ~/.cache && \
    rm -rf /build/*
WORKDIR /
RUN rm -rf /build
