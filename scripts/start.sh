#!/bin/bash

docker build -t instant-deployment-app .

docker run -d \
  --name instant-deployment-container \
  -p 80:80 \
  --restart unless-stopped \
  instant-deployment-app

