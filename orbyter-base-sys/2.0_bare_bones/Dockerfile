from ubuntu:18.04
# This part below should be same as in orbyter-base-sys-dl/1.x/Dockerfile
COPY . /build
WORKDIR /build
ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8
# install why is this failing?!?!
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
    python3.7 \
    python3-pip \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev

#RUN apt-get install -qqy --no-install-recommends \
    #vim \
    #emacs \
    #screen \
    #git \
    #wget \
    #curl \
    #cmake \
    #htop 
# libpq-dev \
# clean up
#RUN rm -rf /var/lib/apt/lists/* && \
    #rm -f /usr/bin/python3 && \
    #rm -f /usr/bin/python && \
    #ln -s /usr/bin/python3.7 /usr/bin/python3 && \
    #ln -s /usr/bin/python3.7 /usr/bin/python && \
    #ln -s /usr/bin/pip3 /usr/bin/pip && \
    #rm -rf ~/.cache
# install pip libraries need for most installs
RUN pip3 install wheel && \
    pip3 install setuptools
WORKDIR /
RUN rm -rf /build
