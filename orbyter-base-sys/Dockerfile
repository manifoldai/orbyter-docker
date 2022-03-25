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
        python3.9-dev=3.9.5-3ubuntu0~20.04.1 \
        python3-pip \
        build-essential \
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
        rsync \
        npm && \
    # This bootstraps pip for python3.9 and installs wheel and setuptools
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.9 get-pip.py && \
    rm /usr/bin/python3.8 /usr/bin/python3 && \
    ln -s /usr/bin/python3.9 /usr/bin/python3 && \
    ln -s /usr/bin/python3.9 /usr/bin/python && \
    ln -s /usr/local/bin/pip /usr/bin/pip && \
    # Install Nodejs v16 (LTS)
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash && \
    apt-get install -y nodejs && \
    # Cleanup \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf ~/.cache
WORKDIR /
RUN rm -rf /build
