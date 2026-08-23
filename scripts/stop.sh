#!/bin/bash

docker stop instant-deployment-container || true
docker rm instant-deployment-container || true