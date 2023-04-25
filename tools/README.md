# tools

## perf

* Linux效能分析工具
* [安裝](https://hackmd.io/@sysprog/gnu-linux-dev/https%3A%2F%2Fhackmd.io%2Fs%2FB11109rdg#%E5%AE%89%E8%A3%9D)

## vscode

* [vscode](https://code.visualstudio.com/)
* [vscode github](https://github.com/microsoft/vscode)

## cloc

* cloc counts blank lines, comment lines, and physical lines of source code in many programming languages.
* [cloc](https://github.com/AlDanial/cloc)

## podman

* [Getting Started with Podman](https://podman.io/getting-started/)
* [Podman pull 'official' images from docker hub?](https://stackoverflow.com/questions/69162077/podman-pull-official-images-from-docker-hub)

```shell
#Check images
podman images

#Examples for podman pull
#TAG latest
podman pull docker.io/library/mysql
podman pull docker.io/vyos/vyos-build:current

#TAG 5.7
podman pull docker.io/library/mysql:5.7
```

## CNCF

* [landscape](https://landscape.cncf.io/)

## Docker

* [How to install and configure Docker on Arch-based Linux Distributions(Manjaro) ?](https://www.geeksforgeeks.org/how-to-install-and-configure-docker-on-arch-based-linux-distributionsmanjaro/)
* [Run the Docker daemon as a non-root user (Rootless mode)](https://docs.docker.com/engine/security/rootless/)

## ChatGPT

* [ChatGPT/Reverse engineered ChatGPT API](https://github.com/acheong08/ChatGPT)
* [awesome-chatgpt-prompts](https://github.com/f/awesome-chatgpt-prompts)

## git

* [初次設定 Git](https://git-scm.com/book/zh-tw/v2/%E9%96%8B%E5%A7%8B-%E5%88%9D%E6%AC%A1%E8%A8%AD%E5%AE%9A-Git)

## github

* [generating-a-new-ssh-key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux#generating-a-new-ssh-key)
* [adding-a-new-ssh-key-to-your-github-account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?tool=webui)
* [customizing-your-profile](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/managing-your-profile-readme)

## collets

* [firecracker](https://github.com/firecracker-microvm/firecracker)
* [bpftrace](https://github.com/iovisor/bpftrace)
* [kubectl-trace](https://github.com/iovisor/kubectl-trace)

## serverless

* [deep-dive-serverless](https://aws.amazon.com/tw/getting-started/deep-dive-serverless/)
* [Cloudflare Workers](https://workers.cloudflare.com/)
    * [Workers Status Page](https://workers.cloudflare.com/built-with/projects/status-page)

## ansible

* [Installing Ansible on Windows](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-windows)
* [Installing Ansible on Arch Linux](https://wiki.archlinux.org/title/Ansible#Installation)
* [ansible_roadmap_index](https://docs.ansible.com/ansible/latest/roadmap/ansible_roadmap_index.html)
* [ansible](https://github.com/ansible/ansible)
* [ansible-completion](https://github.com/dysosmus/ansible-completion)
* [ansible_community](https://docs.ansible.com/ansible_community.html)

```shell
#If using Arch Linux
#更新系統軟體包:
sudo pacman -Syu

#安裝Ansible:
sudo pacman -S ansible
sudo pacman -S ansible-<version>
sudo pacman -S ansible-2.10.13

#檢查Ansible版本
ansible --version

#確保已經安裝了 bash-completion 套件：
sudo pacman -S bash-completion

#下載 Ansible 的自動完成腳本：
sudo curl https://raw.githubusercontent.com/dysosmus/ansible-bash-completion/master/ansible -o /usr/share/bash-completion/completions/ansible

#重新啟動終端機或者載入 bash-completion：
source /usr/share/bash-completion/bash_completion
```