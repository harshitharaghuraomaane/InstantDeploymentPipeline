#!/bin/bash

set -e

echo "Checking Docker container..."

if ! docker ps --format '{{.Names}}' | grep -q '^instant-deployment-container$'
then
    echo "Docker container is not running."
    exit 1
fi

echo "Checking application..."

curl -f http://localhost/ > /dev/null

echo "Application validation successful."
exit 0