#!/bin/bash

if [[ "$(docker images -q ansible-boto:latest 2> /dev/null)" == "" ]]
then
  docker build -t ansible-boto:latest .
fi

if ! [[ -d .aws && -f .aws/credentials && -f .aws/config ]]
then
  echo "Please place your AWS credentials on $(pwd)/.aws"
  exit
fi

docker run --rm -v $(pwd):/root/ -it ansible-boto /bin/sh

