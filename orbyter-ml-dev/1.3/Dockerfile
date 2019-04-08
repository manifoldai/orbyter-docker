# orbyter-ml-dev:1.2 
FROM manifoldai/orbyter-base-sys:1.0
COPY . /build
WORKDIR /build
# Separely split pip to avoid pip install main issue
RUN pip install --upgrade pip
RUN apt-get update &&\
    apt-get install -y libpq-dev python3-dev &&\
    pip install wheel &&\
    pip install setuptools &&\
    pip install -r requirements.txt &&\
    jupyter contrib nbextension install --user
ENV PYTHONPATH="/mnt:${PYTHONPATH}" 
WORKDIR /mnt
RUN rm -rf /build
