#!/usr/bin/env sh
set -euxo pipefail

#For RHEL/Rocky Linux/CentOS/...etc to get Vmware Fusion support from host OS
sudo dnf install -y open-vm-tools
sudo systemctl enable --now vmtoolsd

systemctl status vmtoolsd