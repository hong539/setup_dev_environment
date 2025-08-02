#!/usr/bin/env sh
set -euxo pipefail

# Disable time sync from host
VBoxManage setextradata "<vm-name>" VBoxInternal/Devices/VMMDev/0/Config/GetHostTimeDisabled 1
# Restart VM

# Enable time sync from host
VBoxManage setextradata "<vm-name>" VBoxInternal/Devices/VMMDev/0/Config/GetHostTimeDisabled 0
# Restart VM

# VBoxManage guestproperty set rocky-9-devops "/VirtualBox/GuestAdd/VBoxService/timesync-set-threshold" 60000