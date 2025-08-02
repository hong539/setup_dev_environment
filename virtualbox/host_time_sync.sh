#!/usr/bin/env sh
set -euxo pipefail

# Disable time sync from host
VBoxManage setextradata "<vm-name>" VBoxInternal/Devices/VMMDev/0/Config/GetHostTimeDisabled 1
# Restart VM

# Enable time sync from host
VBoxManage setextradata "<vm-name>" VBoxInternal/Devices/VMMDev/0/Config/GetHostTimeDisabled 0
# Restart VM