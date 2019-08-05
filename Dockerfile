#FROM arm32v7/debian:buster
#FROM debian:testing-slim
FROM arm32v7/debian:buster

MAINTAINER angel <ugeekpodcast@gmail.com>

RUN apt-get -y update; \
    apt-get -y upgrade; \
    apt-get -y install apt-utils \
    mumble-server;

EXPOSE 64738

VOLUME /etc/

ENTRYPOINT service mumble-server start && /bin/bash
