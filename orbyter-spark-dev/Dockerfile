FROM manifoldai/orbyter-base-sys:4.2

WORKDIR /build
COPY ./orbyter-spark-dev .
COPY ./requirements-dev.txt .

RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends \
    default-jdk \
    libpq-dev \
    graphviz && \
    rm -rf /var/lib/apt/lists/*

# Install Spark
RUN curl -O https://mirrors.ocf.berkeley.edu/apache/spark/spark-3.3.3/spark-3.3.3-bin-hadoop3.tgz
RUN tar -xzf spark-3.3.3-bin-hadoop3.tgz && \
    mv spark-3.3.3-bin-hadoop3/ /opt/spark && \
    echo "export SPARK_HOME=/opt/spark\nexport PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin" >> ~/.bashrc

RUN pip install --no-cache-dir -r requirements-dev.txt
RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONPATH="/mnt:${PYTHONPATH}" 

WORKDIR /mnt
RUN rm -rf /build
