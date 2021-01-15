# Dockerfile for pyspark isolated runs

I have created this dockerfile to run some simple pyspark applications on local machine. This is also helpfull to debug jobs on localhost on a sampled data sets.

## Base image

- [openjdk:8](https://hub.docker.com/r/philipssoftware/openjdk)

## Build

> docker build -t pyspark .

## Usage

The pyspark file can be directly passed into the dockerfile by using helping script docker-submit.
This command will mount your existing directory (from where the command was run) into the /data folder in dockerfile. It will pass the asset file as an parameter to the spark-submit application inside the docker container.

> docker-submit.sh asset.py

# Vim
If you like (like me) editing python files in a vim editor, you may use the helping command command docker-submit.sh, by simply entering this command in vim:
> :!sh docker-submit.sh %

This will run your asset file inside a docker
