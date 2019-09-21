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
# Plotly-orca depedencies
RUN apt-get install -y --no-install-recommends \
        xvfb \
        libgtk2.0-0 \
        libxtst6 \
        libxss1 \
        libgconf-2-4 \
        libnss3 \
        libasound2 && \
     mkdir -p /home/orca && \
     cd /home/orca && \
     wget https://github.com/plotly/orca/releases/download/v1.2.1/orca-1.2.1-x86_64.AppImage && \
     chmod +x orca-1.2.1-x86_64.AppImage && \
     ./orca-1.2.1-x86_64.AppImage --appimage-extract && \
     printf '#!/bin/bash \nxvfb-run --auto-servernum --server-args "-screen 0 640x480x24" /home/orca/squashfs-root/app/orca "$@"' > /usr/bin/orca && \
     chmod +x /usr/bin/orca
ENV PYTHONPATH="/mnt:${PYTHONPATH}" 
WORKDIR /mnt
RUN rm -rf /build
