FROM manifoldai/orbyter-base-sys:1.0
COPY . /build
WORKDIR /build
RUN pip install --upgrade pip
RUN pip install wheel
RUN pip install setuptools
RUN pip install pipenv
RUN pipenv install --three --dev --system
RUN jupyter contrib nbextension install --user
WORKDIR /
RUN rm -rf /build
