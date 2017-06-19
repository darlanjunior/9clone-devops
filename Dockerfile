FROM alpine:latest

RUN apk update
RUN ln -s /dev/null /root/.ash_history
RUN apk add gcc git libffi-dev musl-dev openssl-dev perl py-pip python python-dev sshpass make openssh
RUN pip install awscli boto boto3 git+git://github.com/ansible/ansible.git@devel

RUN eval $(ssh-agent)
RUN ssh-add /root/ssh_keys/*.pem

WORKDIR /root/
