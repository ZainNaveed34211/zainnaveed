FROM alpine:latest
LABEL MAINTAINER="https://github.com/ZainNaveed34211/zainnaveed"
WORKDIR /zainnaveed/
ADD . /zainnaveed
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./zainnaveed.sh"
