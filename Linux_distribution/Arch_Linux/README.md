# Arch Linux

## guides

* [讓Arch Linux安裝更簡單：archinstall script使用教學](https://ivonblog.com/posts/archinstall-script/)
* [系統後續安裝優化](https://ivonblog.com/posts/install-archlinux/#3-%E7%B3%BB%E7%B5%B1%E5%BE%8C%E7%BA%8C%E5%AE%89%E8%A3%9D%E5%84%AA%E5%8C%96)
* [pacman套件管理員使用方式](https://ivonblog.com/posts/install-archlinux/#32-pacman%E5%A5%97%E4%BB%B6%E7%AE%A1%E7%90%86%E5%93%A1%E4%BD%BF%E7%94%A8%E6%96%B9%E5%BC%8F)
* [安裝AUR套件管理員](https://ivonblog.com/posts/install-archlinux/#33-%E5%AE%89%E8%A3%9Daur%E5%A5%97%E4%BB%B6%E7%AE%A1%E7%90%86%E5%93%A1)
* [pacman wiki at archlinux](https://wiki.archlinux.org/title/pacman)

## tools

```shell
#pacman
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

#gnuplot
sudo pacman -S gnuplot

#bash-completion
sudo pacman -S bash-completion

#AUR (Arch User Repository)
#yay

#install google-chrome via yay
yay -S google-chrome

#install nvm via yay
yay -S nvm
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

#If the issue persists, you can try using different mirrors. Open the /etc/pacman.d/mirrorlist file as root and uncomment (remove the # symbol) from the desired mirrors. Save the file and try running the installation command again.
```