#!/bin/bash

# Install necessary packages
sudo apt-get update
sudo apt-get install -y vim ddrescue testdisk

# Create the file system
mkdir -p /tmp/customiso/casper
mksquashfs /mnt /tmp/customiso/casper/filesystem.squashfs

# Create the ISO file
mkisofs -r -V "Custom Ubuntu Live CD" \
-cache-inodes \
-J \
-l \
-b isolinux/isolinux.bin \
-c isolinux/boot.cat \
-no-emul-boot \
-boot-load-size 4 \
-boot-info-table \
-o custom.iso /tmp/customiso/