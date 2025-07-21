# Debian

## Guides/tips/MISC...stc

* [Linux 教學計畫 - Unix/Linux 作業系統實務](https://https://www.youtube.com/playlist?list=PLdrYbn8q6soMkCVy3w4bibY5N0jd6dE1w)
    * 本課程是「64位元Debian Linux作業系統實務-Bookworm版」，由中華民國教育部 112 年度教學實踐研究計畫所贊助，計畫名稱為「Linux 教學計畫 - Unix/Linux 作業系統實務」。在此感謝教育部大力提供經費，補助本課程以及錄製教學影片。

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
* [www.stdtime.gov.tw/chrono/index_2_2.html](https://www.stdtime.gov.tw/chrono/index_2_2.html)
    * NTP(Network Time Protocol)
* [www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames](https://www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames/)