from ubuntu:18.04
# This part below should be same as in orbyter-base-sys-dl/2.x/Dockerfile
WORKDIR /build
ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
    python3.7 \
    python3-pip \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3.7-dev \
    vim \
    emacs \
    screen \
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
RUN pip install wheel && \
    pip install setuptools
WORKDIR /
RUN rm -rf /build
