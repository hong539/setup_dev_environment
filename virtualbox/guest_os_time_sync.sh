#!/usr/bin/env sh
set -euxo pipefail

#For RHEL/Rocky Linux/CentOS/...etc to get VirtualBox support from host OS
sudo dnf install -y epel-release
sudo dnf groupinstall -y "Development Tools"
sudo dnf install -y kernel-devel kernel-headers dkms elfutils-libelf-devel qt5-qtbase-devel