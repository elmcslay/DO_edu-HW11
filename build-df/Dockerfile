FROM openjdk:11

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install maven \
                                                   docker.io -y

ADD /var/run/docker.sock /var/run/docker.sock

RUN apt-get clean