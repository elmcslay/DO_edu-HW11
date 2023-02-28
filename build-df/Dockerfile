FROM openjdk:11

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install maven \
                                                   ssh \
                                                   docker.io -y

RUN apt-get clean

ADD ~/.ssh/id_rsa /root/.ssh/