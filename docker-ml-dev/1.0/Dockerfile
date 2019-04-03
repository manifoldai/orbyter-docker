FROM ubuntu:xenial-20180228
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
      curl \
      build-essential \
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
    pip install --upgrade pip==9.0.3 && \
    pip install wheel && \
    pip install setuptools==39.0.1 && \
    pip install pipenv==11.9.0  && \
    pipenv install --three --dev --system && \
    jupyter contrib nbextension install --user && \
    rm -rf ~/.cache
WORKDIR /
RUN rm -rf /build
