FROM alpine:latest

RUN apk update
RUN ln -s /dev/null /root/.ash_history
RUN apk add gcc git libffi-dev musl-dev openssl-dev perl py-pip python python-dev sshpass make
RUN pip install awscli boto boto3 git+git://github.com/ansible/ansible.git@devel

WORKDIR /root/
