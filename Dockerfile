FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install openjdk-11 \
                    maven \
                    docker.io -y

RUN apt-get clean