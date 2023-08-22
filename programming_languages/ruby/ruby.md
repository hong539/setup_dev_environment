# Ruby

## Guides nad tips

* [installation](https://www.ruby-lang.org/en/documentation/installation/)
* [install ruby on Arch Linux](https://www.ruby-lang.org/en/documentation/installation/#pacman)
* [Jekyll is a Ruby Gem that can be installed on most systems.](https://jekyllrb.com/docs/installation/)
    * [Jekyll on Ubuntu](https://jekyllrb.com/docs/installation/ubuntu/)

```shell
#ruby gem packages
#install jekyll
#method 1
#Follow the instructions for Ubuntu. also we can do it on other Linux like Arch Linux
#src: https://jekyllrb.com/docs/installation/ubuntu/

#check prerequisites
ruby -v
gem -v
gcc -v
g++ -v
make -v

#Debian/Ubuntu
sudo apt-get install ruby-full build-essential zlib1g-dev

#Arch Linux
#update packages list
sudo pacman -Syy

#install ruby base-devel via pacman
sudo pacman -S ruby base-devel

#check
pacman -Q base-devel
#base-devel 1-1
pacman -Q zlib
#zlib 1:1.2.13-2

#add environment variables to your ~/.bashrc file
#configure the gem installation path
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

#Finally, install Jekyll and Bundler:
gem install jekyll bundler
```