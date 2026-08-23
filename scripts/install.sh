#!/bin/bash

set -e

if ! command -v docker >/dev/null 2>&1
then
    dnf install docker -y
fi

systemctl enable docker
systemctl start docker

docker --version