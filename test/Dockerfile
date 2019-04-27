FROM resin/rpi-raspbian:latest

RUN apt update
RUN apt-get install -y python3-pip
pip3 install awscli

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_REGION=us-west-2

RUN aws ecr get-login --no-include-email | bash

CMD ["npm", "start"]


#docker build -t testing --build-arg AWS_ACCESS_KEY_ID=XXX
#    --build-arg AWS_SECRET_ACCESS_KEY=3cjE/XXX .
