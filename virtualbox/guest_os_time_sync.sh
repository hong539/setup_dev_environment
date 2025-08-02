#!/usr/bin/env sh
set -euxo pipefail

#For RHEL/Rocky Linux/CentOS/...etc to get VirtualBox support from host OS
#docs: https://www.virtualbox.org/manual/ch02.html#externalkernelmodules
#docs: https://www.virtualbox.org/manual/ch04.html#additions-linux
#downloads: https://download.virtualbox.org/virtualbox/7.1.10/
sudo dnf install -y epel-release
sudo dnf groupinstall -y "Development Tools"
sudo dnf install -y kernel-devel kernel-headers dkms
# sudo dnf install -y kernel-devel kernel-headers dkms elfutils-libelf-devel qt5-qtbase-devel