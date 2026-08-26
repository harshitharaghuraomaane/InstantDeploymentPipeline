#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$(dirname "$SCRIPT_DIR")"

cd "$APP_DIR"

echo "Building Docker image..."

docker build --no-cache -t instant-deployment-app .

echo "Removing old container..."

docker rm -f instant-deployment-container 2>/dev/null || true

echo "Starting new container..."

docker run -d \
  --name instant-deployment-container \
  -p 80:80 \
  --restart unless-stopped \
  instant-deployment-app

echo "Deployment started successfully."