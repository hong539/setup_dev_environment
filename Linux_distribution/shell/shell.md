# shell

## Overview

* [Coreutils - GNU core utilities](https://www.gnu.org/software/coreutils/)
* [When not to use shell scripts](https://tldp.org/LDP/abs/html/why-shell.html)
* [Unix / Linux - What is Shells?](https://www.tutorialspoint.com/unix/unix-what-is-shell.htm)
* [Shell builtin](https://zh.wikipedia.org/zh-tw/%E6%AE%BC%E5%B1%A4%E5%85%A7%E5%BB%BA%E6%8C%87%E4%BB%A4)
* [bandit](https://overthewire.org/wargames/bandit/bandit0.html)
    * Play with SSH and others.

## Tips when using CLI

* Ask our chatGPT

```shell
#what is shell in Linux?

#In Linux, a shell is a program that interprets commands and provides an interface for users to interact with the operating system. It is also known as a command-line interpreter (CLI). Users can type commands into the shell, which are then executed by the operating system. The shell provides a way to access the file system, run programs, and manage system resources. There are different types of shells available in Linux, such as Bash, Zsh, Ksh, and others, each with its own features and capabilities.

#How to check your command is Shell builtin in Linux or not?
type <command>

#examples
type echo
echo is a shell builtin
echo 是 shell 內建物件
```

* [man tree](https://linux.die.net/man/1/tree)

```shell
#mkdir
mkdir --help
mkdir CI/CD_tools
#mkdir: cannot create directory ‘CI/CD_tools’: No such file or directory

#sha512sum Print or check SHA512 (512-bit) checksums.
#other related tools: md5sum/sha256sum/...etc
sha512sum -c Endeavouros_Cassini_Nova-03-2023_R2.iso.sha512sum

#src: https://www.gnu.org/software/coreutils/manual/html_node/base64-invocation.html#base64-invocation
#src: https://superuser.com/questions/120796/how-to-encode-base64-via-command-line
#base64
#encode "FOO" with base64
echo FOO | base64
#After encode "Rk9PCg=="
#decode "Rk9PCg==" with base64
echo Rk9PCg== | base64 -d

#dmidecode is a tool for dumping a computer's DMI (some say SMBIOS ) table contents in a human-readable format.
#src: https://linux.die.net/man/8/dmidecode
sudo dmidecode
sudo dmidecode > dmidecode.log

#Print information about users who are currently logged in.
who --help

#Print the user name associated with the current effective user ID.
whoami --help

#show uptime commands with basic guides
uptime --help
#show uptime in pretty format
uptime -p

#Display information about command type.
type --help

#How to measure booting time for your Linux?
#如何測量Arch Linux開機時間?
#這將會顯示出開機所需的總時間，包括Kernel啟動的時間、Userspace的時間和總共的時間。
systemd-analyze

#如果您想更詳細地了解哪些系統服務或者單元需要更長的時間，可以輸入以下命令：
systemd-analyze blame

#如果您想查看啟動過程的圖形化分析，可以輸入以下命令：
systemd-analyze plot > boot.svg

#systemd
systemctl status service_name
systemctl restart service_name


#Check env settings
env
#How to check your shell is?
#Look at 1st line
SHELL=/bin/bash

#Or Using echo to check SHELL is?
echo $SHELL

#tree
tree . -d -L 2

#show system info
cat /etc/os-release
neofetch

#show kernel info
uname -a
uname -r

#mem check
free -h

#cpu ps mem
top
htop

#List information about block devices.
lsblk

df -h
du -h

#net host:port check
ss -tpln

#Display or control the kernel ring buffer.
dmesg --help

#Write the full path of COMMAND(s) to standard output.
which --help

#比較舊版的網路工具
netstat -tpln

#新版的網路工具
ss -tpln
ip a
```
