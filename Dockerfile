FROM ubuntu:14.04

MAINTAINER Ludovic Courtois <ludovic@lcourtois.fr>

RUN apt-get update && \
    apt-get install -y git-core && \
    apt-get install -y make

RUN git clone https://github.com/benblazak/ergodox-firmware.git firmware
RUN cd /firmware/src

VOLUME /keymap
