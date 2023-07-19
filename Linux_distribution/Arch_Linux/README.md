# Arch Linux

## guides

* [讓Arch Linux安裝更簡單：archinstall script使用教學](https://ivonblog.com/posts/archinstall-script/)
* [系統後續安裝優化](https://ivonblog.com/posts/install-archlinux/#3-%E7%B3%BB%E7%B5%B1%E5%BE%8C%E7%BA%8C%E5%AE%89%E8%A3%9D%E5%84%AA%E5%8C%96)
* [pacman套件管理員使用方式](https://ivonblog.com/posts/install-archlinux/#32-pacman%E5%A5%97%E4%BB%B6%E7%AE%A1%E7%90%86%E5%93%A1%E4%BD%BF%E7%94%A8%E6%96%B9%E5%BC%8F)
* [安裝AUR套件管理員](https://ivonblog.com/posts/install-archlinux/#33-%E5%AE%89%E8%A3%9Daur%E5%A5%97%E4%BB%B6%E7%AE%A1%E7%90%86%E5%93%A1)
* [pacman wiki at archlinux](https://wiki.archlinux.org/title/pacman)

## tools

```shell
#check or edit mirrorlist
sudo vim /etc/pacman.d/mirrorlist

#pacman

#Updating the Pacman Database
sudo pacman -Syy

#install
sudo pacman -S package_name

#remove
sudo pacman -R package_name

#search packages
pacman -Ss base-devel
#search installed packages
pacman -Q | grep base-devel
#search installed packages pipe with grep and multiple keywords
pacman -Q | grep "base-devel\|git"
pacman -Q | grep "base-devel\|git\|clang\|cppcheck\|aspell"
pacman -Q | grep "base-devel\|git\|clang\|cppcheck\|aspell\|colordiff"
pacman -Q | grep "base-devel\|git\|clang\|cppcheck\|aspell\|colordiff\|valgrind"
#if installed they will be shown in your terminal like this
# aspell 0.60.8-3
# aspell-en 2020.12.07-1
# base-devel 1-1
# clang 15.0.7-9
# colordiff 1.0.21-1
# cppcheck 2.10.3-2
# git 2.40.0-1
# kdsoap-ws-discovery-client git20200927-2
# libgit2 1:1.6.3-1
# valgrind 3.20.0-1
#with awk show packages name only
pacman -Q | awk '{print $1}'

#perf
sudo pacman -S perf
sudo perf list
sudo perf <command>
sudo perf stat ls

#unzip
sudo pacman -S unzip

#gnuplot
sudo pacman -S gnuplot

#bash-completion
sudo pacman -S bash-completion

#kubectl
sudo pacman -S kubectl
which kubectl

#kubie
sudo pacman -S kubie

#AUR (Arch User Repository)
#github
#https://github.com/Jguer/yay
#yay

#install google-chrome via yay
yay -S google-chrome

#install nvm via yay
yay -S nvm

#kind
yay -S kind
```

##Setting up remote server

```shell
#Before start
#Record My setting up for Arch Linux
#Arch Linux with KDE plasma 5 desktop
#But I remove KDE plasma 5 and insatll Xfce4 desktop and also keep Simple Desktop Display Manager (SDDM) from KDE plasma 5

#Another way to comare
#Create a VM with archinstall and install desltop Xfce to check if I'm missing to install any other packages?

#QML based X11 and Wayland display manager
#Simple Desktop Display Manager
#remove
sudo pacman -R sddm

#xfce desktop
#remove
sudo pacman -Rc xfce4 xfce4-goodies
rm -rf ~/.config/xfce4

#gnome desktop
sudo pacman -S gnome gnome-extra

#start gdm
systemctl start gdm.service
systemctl enable gdm.service

#Try moonlight(try thier client) and sunshine(as server on Linux)
# https://ivonblog.com/posts/linux-sunshine-remote-gaming/
# https://moonlight-stream.org/
# https://github.com/LizardByte/Sunshine

#install AUR package 
yay -S sunshine

#setup sunshine
#https://docs.lizardbyte.dev/projects/sunshine/en/latest/about/usage.html#linux

echo 'KERNEL=="uinput", SUBSYSTEM=="misc", OPTIONS+="static_node=uinput", TAG+="uaccess"' | \
sudo tee /etc/udev/rules.d/85-sunshine.rules

vim ~/.config/systemd/user/sunshine.service
[Unit]
Description=Sunshine self-hosted game stream host for Moonlight.
StartLimitIntervalSec=500
StartLimitBurst=5

[Service]
ExecStart=/usr/bin/sunshine
Restart=on-failure
RestartSec=5s
#Flatpak Only
#ExecStop=flatpak kill dev.lizardbyte.sunshine

[Install]
WantedBy=graphical-session.target

#start and enable boot options for sunshine
systemctl --user start sunshine
#check status
systemctl --user status sunshine
#Start on boot
systemctl --user enable sunshine

#Additional Setup for KMS if needed
sudo setcap cap_sys_admin+p $(readlink -f $(which sunshine))

#Reboot
sudo reboot now

#!!! given up xrdp + xrogxrdp way... !!!

#xrdp
#Arch wiki
#https://wiki.archlinux.org/title/xrdp
#tips for Help with xrdp setup
yay -S xrdp xorgxrdp

#The session manager UI can be highly customized by modifying /etc/xrdp/xrdp.ini.
sudo vim /etc/xrdp/xrdp.ini
#The parameters used to start Xorg and Xvnc display servers can be configured in /etc/xrdp/sesman.ini.
sudo vim /etc/xrdp/sesman.ini

#After successfully starting a display server, xrdp will execute /etc/xrdp/startwm.sh by default. This script is meant to start a window manager (similar to .xinitrc) and will read from ~/.xinitrc or /etc/X11/xinit/xinitrc if they exist. It is recommended to edit ~/.xinitrc to start your desktop environment or window manager, but you can also edit /etc/xrdp/startwm.sh.
#Hint :https://wiki.archlinux.org/title/Xinit#xinitrc

cp /etc/X11/xinit/xinitrc ~/.xinitrc
vim ~/.xinitrc

#Non-root user
vim /etc/X11/Xwrapper.config
allowed_users=anybody
needs_root_rights=no

#other tips?
#https://unix.stackexchange.com/questions/532983/arch-linux-issues-with-xorgxrdp-and-xfce4-windows-manager
sudo vim /etc/xrdp/xrdp.ini
allow_channels=false
#This will quick turn off your RDP client ahter select Xorg or Xvnc with user and passwd to login

#restart xrdp and xrdp-sesman
sudo systemctl restart xrdp xrdp-sesman

#Issues study : [ERROR] xrdp_mm_chansrv_connect: error in trans_connect chan
#https://github.com/neutrinolabs/xrdp/issues/2211
```

## troubleshooting or tips

* pacman -S packages error

```shell
#Update the package databases by running the following command
sudo pacman -Sy

#Clear the package cache to ensure you're not using outdated packages
sudo pacman -Scc

#Try installing the bind package again
sudo pacman -S bind

#Remove the conflicting packages using the command
sudo pacman -Rdd package_name

#Clear the package cache using the command
sudo pacman -Scc

#If the issue persists, you can try using different mirrors. Open the /etc/pacman.d/mirrorlist file as root and uncomment (remove the # symbol) from the desired mirrors. Save the file and try running the installation command again.
```