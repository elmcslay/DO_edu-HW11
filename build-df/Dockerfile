FROM openjdk:11

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install maven \
                                                   docker.io -y

RUN apt-get clean