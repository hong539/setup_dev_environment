# Ubuntu

## Guides/Tips/misc...etc

* [ubuntu.com/download](https://ubuntu.com/download)
* [How can I get a list of all repositories and PPAs from the command line into an install script?](https://askubuntu.com/questions/148932/how-can-i-get-a-list-of-all-repositories-and-ppas-from-the-command-line-into-an)

```shell
grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/*
```