# orbyter-base-sys:4.0
FROM python:3.10.5-slim-bullseye
WORKDIR /build
ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    TZ=America/Los_Angeles
# The time zone avoids prompts during cmake install
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
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
        rsync && \

    # Cleanup
    apt-get autoremove -y && apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf ~/.cache && \
    rm -rf /build/*
WORKDIR /
RUN rm -rf /build
