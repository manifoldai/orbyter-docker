# orbyter-ml-dev:4.0
FROM manifoldai/orbyter-base-sys:4.0
COPY . /build
WORKDIR /build
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
        libpq-dev \
        graphviz && \
    pip install -r requirements.txt && \
    rm -rf /var/lib/apt/lists/*
ENV PYTHONPATH="/mnt:${PYTHONPATH}" 
WORKDIR /mnt
RUN rm -rf /build
