#!/usr/bin/env sh
set -euxo pipefail

# /etc/chrony.conf

sudo dnf install chrony -y

systemctl status chronyd

sudo systemctl enable --now chrony-wait.service