# orbyter-ml-dev:4.1
FROM manifoldai/orbyter-base-sys:4.1
COPY . /build
WORKDIR /build
RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
    libpq-dev \
    graphviz && \
    rm -rf /var/lib/apt/lists/*
RUN pip install -r requirements.txt
ENV PYTHONPATH="/mnt:${PYTHONPATH}" 
WORKDIR /mnt
RUN rm -rf /build
