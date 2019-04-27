FROM resin/rpi-raspbian:latest

RUN apt update
COPY . /flipper
WORKDIR /flipper/scripts
RUN chmod +x install.sh
CMD sh install.sh
