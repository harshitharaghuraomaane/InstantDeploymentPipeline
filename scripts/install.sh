#!/bin/bash

if ! command -v docker &> /dev/null
then
    dnf install docker -y
fi

systemctl start docker
systemctl enable docker