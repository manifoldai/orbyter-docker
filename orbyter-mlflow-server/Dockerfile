# orbyter-ml-dev:1.3 
FROM manifoldai/orbyter-base-sys:3.2
COPY . /build
WORKDIR /build
# Separely split pip to avoid pip install main issue
RUN apt-get update &&\
    apt-get install -y libpq-dev &&\
    pip install -r requirements.txt
WORKDIR /mnt
RUN rm -rf /build
CMD ["bash"]
