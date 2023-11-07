# Debian

## tips/gudides

```shell
#sudo setup
#src: 
#You probably used su to become root. Try using su - instead.
# usermod is almost certainly installed. But it is in /usr/sbin/ and that directory is (by default) only in root's $PATH, not in the $PATH of non-root users. And if you use su to become root, you keep your user's $PATH. If you use su - instead, you get root's $PATH.
su -

#hostname
hostnamectl set-hostname {name-here}
```

* [bash: usermod: command not found (in latest Debian 11 install)](https://www.reddit.com/r/linuxquestions/comments/pcfjo6/bash_usermod_command_not_found_in_latest_debian/)
* [initial-server-setup-with-debian-11](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-debian-11)