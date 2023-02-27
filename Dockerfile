FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install default-jdk \
                                                   maven \
                                                   docker.io -y

RUN apt-get clean