#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$(dirname "$SCRIPT_DIR")"

cd "$APP_DIR" || exit 1

docker build -t instant-deployment-app .

docker rm -f instant-deployment-container 2>/dev/null || true

docker run -d \
  --name instant-deployment-container \
  -p 80:80 \
  --restart unless-stopped \
  instant-deployment-app