FROM debian:testing-slim
MAINTAINER angel <ugeekpodcast@gmail.com>

RUN apt-get -y update; \
    apt-get -y upgrade; \
    apt-get -y install apt-utils \
    mumble-server;

EXPOSE 64738

VOLUME /etc/

ENTRYPOINT service mumble-server start && /bin/bash
