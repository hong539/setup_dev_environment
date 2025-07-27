#!/usr/bin/env bash
set -euxo pipefail

packer init .
packer fmt .
packer validate .

# packer build docker-ubuntu.pkr.hcl

packer build .

docker images

docker run -it $IMAGE_ID

docker image prune -a