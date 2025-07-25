#!/bin/bash

#pull latest
docker pull focal1119/setup_dev_environment:latest

#stop current container
docker stop setup_dev_environment

#remove current container
docker rm setup_dev_environment

# docker run --restart=always -d --name setup_dev_environment -p 8000:80 docker.io/focal1119/setup_dev_environment:latest

docker run --restart=always -d --name setup_dev_environment -p 8000:80 docker.io/focal1119/setup_dev_environment:2025-06-08-06-44