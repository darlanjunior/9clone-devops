#!/bin/bash

docker run --rm -v $(pwd):/root/ -it ansible-boto /bin/sh
