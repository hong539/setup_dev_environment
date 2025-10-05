#!/usr/bin/env bash
set -euxo pipefail

#pull latest
docker pull focal1119/setup_devops_environment:latest

#stop current container
docker stop setup_devops_environment

#remove current container
docker rm setup_devops_environment

# docker run --restart=always -d --name setup_devops_environment -p 8000:80 docker.io/focal1119/setup_devops_environment:latest

docker run --restart=always -d --name setup_devops_environment -p 8000:80 docker.io/focal1119/setup_devops_environment:2025-06-08-06-44