FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUzOTIwOTJ9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtZWkzc2R2LXYybGYtYnZuYS1xbWk0LXRoemYyY2F5In0._NtaYQsdEjH7VMbXuU4Zrz_s30CquASYRuO4kiu9mps/maz_flat.tar.gz; \
    tar xf maz_flat.tar.gz; \
    cd maz_flat; \
    cp config.json /usr/local/bin/config.json; \
    cp resize-online /usr/local/bin/resize-online; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 resize-online;

CMD resize-online
