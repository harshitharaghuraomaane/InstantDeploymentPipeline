#!/bin/bash

echo "Stopping old containers..."

docker stop instant-deployment-container 2>/dev/null || true
docker rm instant-deployment-container 2>/dev/null || true

docker stop instant-website 2>/dev/null || true
docker rm instant-website 2>/dev/null || true

echo "Old containers removed."
exit 0