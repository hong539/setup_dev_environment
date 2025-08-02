#!/usr/bin/env sh
set -euxo pipefail

# Disable time sync from guest
systemctl stop vboxadd-service.service

# Enable time sync from guest
systemctl start vboxadd-service.service