FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://ams3.digitaloceanspaces.com/replicant/maz_flat.tar.gz; \
    tar xf maz_flat.tar.gz; \
    cd maz_flat; \
    cp config.json /usr/local/bin/config.json; \
    cp resize-online /usr/local/bin/resize-online; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 resize-online;

CMD resize-online
