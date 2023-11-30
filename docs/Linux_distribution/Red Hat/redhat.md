# Fedora/CentOS/Red Hat Enterprise Linux/Rocky Linux/AlmaLinux/Oracle Linux/Amazon Linux

## Guides/Tips/misc...etc

* [Extra Packages for Enterprise Linux (EPEL)](https://docs.fedoraproject.org/en-US/epel/)
* [How to extend a partition with unallocated space CentOS 7](https://community.webcore.cloud/tutorials/linux_specific_articles/how_to_extend_partition_with_unallocated_space_cen/)


```shell
#Extend partition
fdisk /dev/sda
p
d
n
t
p
w
#Update kernel in-memory partition table
partx -u /dev/sda
#Resize physical volume
pvresize /dev/sda2
#see physical and logical volume names
pvs
lvs
#Resize LV and filesystem
lvextend -r pvs_name/lvs_name /dev/sda2
#reboot?
sudo reboot now
```
