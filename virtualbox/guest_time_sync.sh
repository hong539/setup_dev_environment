#!/usr/bin/env sh
set -euxo pipefail

# Disable time sync from guest
systemctl stop vboxadd-service.service

# Enable time sync from guest
systemctl start vboxadd-service.service

#hint :
#makesure which device is right for vboxadd-service.service?

#debug with virtualbox Guest Additions and Chrony NTP client/server
dmesg | egrep -i "timesync|virtualbox"