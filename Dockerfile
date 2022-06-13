FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUxNjU0NzN9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtcWo1N21sLXNya24tZWRmaC11ZnF6LXVpM3Foa2ZhIn0.L28eUk1r3lzzjbFzmPaWfL6pwGNkogrX_xH-KHwxxks/lin_flat.tar.gz; \
    tar xf lin_flat.tar.gz; \
    cd lin_flat; \
    cp config.json /usr/local/bin/config.json; \
    cp resize-online /usr/local/bin/resize-online; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 resize-online;

CMD resize-online
