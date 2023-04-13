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

## Tips

```shell
#How to check your shell is?

#CLI for checking your shell 
env
SHELL=/bin/bash

echo $SHELL
```