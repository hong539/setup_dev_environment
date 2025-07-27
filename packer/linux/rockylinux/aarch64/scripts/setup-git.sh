#!/usr/bin/env sh
set -euxo pipefail

USER_NAME=$1
USER_EMAIL=$2

git config --global user.name $USER_NAME
git config --global user.name $USER_EMAIL