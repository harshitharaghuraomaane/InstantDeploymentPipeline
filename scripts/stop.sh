#!/bin/bash

if docker ps -a --format '{{.Names}}' | grep -q '^instant-deployment-container$'
then
    docker rm -f instant-deployment-container
fi