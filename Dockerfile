FROM openjdk:8
LABEL maintainer="vexelenn"

# Install Python
RUN \
    apt-get update && \
    apt-get install -y python python-dev python3-pip python3-virtualenv && \
    rm -rf /var/lib/apt/lists/*

# Install PySpark and Numpy
RUN \
    pip3 install --upgrade pip && \
    pip3 install numpy && \
    pip3 install pyspark

# set proper ENV variables in image
ENV PYSPARK_PYTHON=python3
ENV SPARK_HOME=/usr/local/lib/python3.7/dist-packages/pyspark

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
