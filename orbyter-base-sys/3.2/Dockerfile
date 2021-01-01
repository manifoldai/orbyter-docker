FROM ubuntu:20.04
WORKDIR /build
ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    TZ=America/Los_Angeles
# The time zone avoids prompts during cmake install
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt-get update -qq && \
    # Most installs copied from orbyter-base-sys:2.0 \
    apt-get install -qqy --no-install-recommends \
        # Update to python 3.8 \
        python3.8=3.8.5-1~20.04 \
        python3-pip \
        build-essential \
        libssl-dev \
        libffi-dev \
        python3.8-dev \
        vim \
        emacs \
        screen \
        git \
        wget \
        curl \
        cmake \
        htop \
        rsync \
        npm && \
    # Updating symlinks of python to use 3.8 \
    rm -f /usr/bin/python3 && \
    rm -f /usr/bin/python3.6* && \
    rm -f /usr/bin/python3.7* && \
    rm -f /usr/bin/python && \
    ln -s /usr/bin/python3.8 /usr/bin/python3 && \
    ln -s /usr/bin/python3.8 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip && \
    # Update pip and common install tools \
    pip install wheel==0.36.2 && \
    pip install setuptools==51.1.1 && \
    pip install -U pip==20.3.3 && \
    # Install Nodejs v12
    curl -sL https://deb.nodesource.com/setup_12.x | bash && \
    apt-get install -y nodejs && \
    # Cleanup \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf ~/.cache
WORKDIR /
RUN rm -rf /build