FROM manifoldai/orbyter-base-sys-dl:1.0
COPY . /build
WORKDIR /build
# Separely split pip to avoid pip install main issue
RUN pip install --upgrade pip
RUN pip install wheel &&\
    pip install setuptools &&\
    pip install -r requirements.txt &&\
    jupyter contrib nbextension install --user
# START ffmpeg install specific lines
# We want the latest ffmpeg, but for that we need to add a ppa.
# But we have an error while adding a ppa. This is because of a bug in add-apt-repository python package at 
# /usr/bin/ (see https://
# stackoverflow.com/questions/42386097/python-add-apt-repository-importerror-no-module-named-apt-pkg)
# The following is a fix for this: use python3.5 to run. Without this we can't add new ppas
# This must be after pipenv installs above
RUN sed -i '1 s/^.*$/\# \! \/usr\/bin\/python3.5/' /usr/bin/add-apt-repository &&\
    /usr/bin/python3.5 /usr/bin/add-apt-repository -y ppa:jonathonf/ffmpeg-3  &&\
    apt-get update && \
    apt-get install -y ffmpeg
# END ffmpeg install specific lines
# Python installs
ENV PYTHONPATH="/mnt:${PYTHONPATH}"
WORKDIR /mnt
RUN rm -rf /build &&\
    rm -rf ~/.cache
