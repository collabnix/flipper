FROM resin/rpi-raspbian:latest

RUN apt update
COPY . /flipper

RUN groupadd -g 1000 pi \
    && useradd -m -u 1001 -g pi pi

WORKDIR /flipper/scripts
RUN chmod +x install.sh

CMD sh install.sh
