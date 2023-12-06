# orbyter-dl-dev
FROM manifoldai/orbyter-base-sys-dl:4.2

WORKDIR /build
COPY ./orbyter-dl-dev .
COPY ./requirements-dev.txt .

RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
    libpq-dev \
    graphviz && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements-dev.txt
RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONPATH="/mnt:${PYTHONPATH}" 

WORKDIR /mnt

RUN rm -rf /build
