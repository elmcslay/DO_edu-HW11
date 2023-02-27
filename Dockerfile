FROM openjdk:11

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get maven \
                                           docker.io -y

RUN apt-get clean