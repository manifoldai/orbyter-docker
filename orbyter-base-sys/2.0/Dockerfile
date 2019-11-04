FROM ubuntu:18.04
# This part below should be same as in orbyter-base-sys-dl/1.x/Dockerfile
COPY . /build
WORKDIR /build
ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8
RUN apt-get update -qq && \
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
      python3.7 \
      python3-pip && \
    rm -rf /var/lib/apt/lists/* && \
    rm -f /usr/bin/python3 && \
    rm -f /usr/bin/python && \
    ln -s /usr/bin/python3.7 /usr/bin/python3 && \
    ln -s /usr/bin/python3.7 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip && \
    rm -rf ~/.cache
WORKDIR /
RUN rm -rf /build
