# shell

## Overview

* [Unix / Linux - What is Shells?](https://www.tutorialspoint.com/unix/unix-what-is-shell.htm)

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

* [Shell builtin](https://zh.wikipedia.org/zh-tw/%E6%AE%BC%E5%B1%A4%E5%85%A7%E5%BB%BA%E6%8C%87%E4%BB%A4)

## Tips when using CLI

* [man tree](https://linux.die.net/man/1/tree)

```shell
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

#net host:port check
ss -tpln

#Display or control the kernel ring buffer.
dmesg --help

#Write the full path of COMMAND(s) to standard output.
which --help
```
