# Fedora/CentOS/Red Hat Enterprise Linux/Rocky Linux/AlmaLinux/Oracle Linux/Amazon Linux

## Guides/Tips/misc...etc

* [[Feature Request] - Run Amazon Linux 2023 as a virtual machine on premises](https://github.com/amazonlinux/amazon-linux-2023/issues/102)
* [No-cost Red Hat Enterprise Linux Individual Developer Subscription: FAQs](https://developers.redhat.com/articles/faqs-no-cost-red-hat-enterprise-linux#)
* [鳥哥/伺服器架設篇 - RockyLinux 9/第四章、網路基礎學習](https://linux.vbird.org/linux_server/rocky9/0150networking.php)
* [鳥哥/伺服器架設篇 - RockyLinux 9/第五章、建立與檢查網路連線](https://linux.vbird.org/linux_server/rocky9/0160setnetwork.php)
* [鳥哥/伺服器架設篇 - RockyLinux 9/第八章、領域名稱伺服器 DNS 服務](https://linux.vbird.org/linux_server/rocky9/0210dns.php)
* [projects/nftables](https://netfilter.org/projects/nftables/)
    * [wiki-nftables/nftables](https://wiki.nftables.org/wiki-nftables/index.php/Main_Page)
    * [git/nftables](https://git.netfilter.org/nftables/)
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
