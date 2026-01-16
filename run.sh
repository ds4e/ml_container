#!/usr/bin/env bash
set -e

IMAGE=ds-dev
CONTAINER=ds-dev

# Build image, if not already built
if ! docker image inspect $IMAGE >/dev/null 2>&1; then
  echo "Building image..."
  docker build -t $IMAGE .
fi

# Start container, if not already running
if ! docker ps --format '{{.Names}}' | grep -q "^$CONTAINER$"; then
  echo "Starting container..."
  docker run -d \
    --name $CONTAINER \
    -v "$(pwd):/workspace" \
    -w /workspace \
    $IMAGE \
    sleep infinity
fi

# Attach terminal to container
docker exec -it $CONTAINER bash

