# orbyter-dl-dev
FROM manifoldai/orbyter-base-sys-dl:4.2

COPY . /build

WORKDIR /build

RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
    libpq-dev \
    graphviz && \
    rm -rf /var/lib/apt/lists/*

COPY ../requirements-dev.txt requirements-dev.txt
RUN pip install -r --no-cache-dir requirements-dev.txt
RUN pip install -r --no-cache-dir requirements.txt

ENV PYTHONPATH="/mnt:${PYTHONPATH}" 

WORKDIR /mnt

RUN rm -rf /build
