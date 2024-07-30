#!/bin/bash

# Build Docker image
docker build -t ghcr.io/dyo713/order-service:latest .

# Log in to GitHub Container Registry
echo $GH_PACKAGES_TOKEN | docker login ghcr.io -u dyo713 --password-stdin

# Push Docker image to GitHub Container Registry
docker push ghcr.io/dyo713/order-service:latest