#!/bin/bash -eu

TAG=$([[ $# -ne 0 ]] && echo $1 || echo latest)
VERSION="0.12.1"

if [ $# -ne 0 ]; then
    docker build -t siphilia/gitit:$TAG .
else
    docker build -t siphilia/gitit:$TAG .
    docker build -t siphilia/gitit:$VERSION .
fi
