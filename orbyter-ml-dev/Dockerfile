# orbyter-ml-dev:3.5
FROM manifoldai/orbyter-base-sys:3.2
COPY . /build
WORKDIR /build
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    pip install -r requirements.txt && \
    jupyter contrib nbextension install --user && \
    jupyter nbextension enable --py widgetsnbextension && \
    jupyter labextension install \
        @jupyter-widgets/jupyterlab-manager && \
    apt-get install -y --no-install-recommends \
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
     chmod +x /usr/bin/orca && \
     rm -rf /var/lib/apt/lists/*
ENV PYTHONPATH="/mnt:${PYTHONPATH}" 
WORKDIR /mnt
RUN rm -rf /build
