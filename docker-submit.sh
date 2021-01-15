#!/bin/sh
IMAGE=pyspark
docker build -t $IMAGE .
exec docker run --rm -it -v "$PWD":/data "$IMAGE" spark-submit "$@"
