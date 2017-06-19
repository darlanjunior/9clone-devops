FROM alpine:latest

RUN apk update
RUN apk add --update ansible py-pip && pip install awscli

WORKDIR /root/
