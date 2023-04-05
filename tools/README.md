# tools

## podman

* [Getting Started with Podman](https://podman.io/getting-started/)
* [Podman pull 'official' images from docker hub?](https://stackoverflow.com/questions/69162077/podman-pull-official-images-from-docker-hub)

```shell
#Check images
podman images

#TAG latest
podman pull docker.io/library/mysql

#TAG 5.7
podman pull docker.io/library/mysql:5.7
```

## CNCF

* [landscape](https://landscape.cncf.io/)

## Docker

* [How to install and configure Docker on Arch-based Linux Distributions(Manjaro) ?](https://www.geeksforgeeks.org/how-to-install-and-configure-docker-on-arch-based-linux-distributionsmanjaro/)
* [Run the Docker daemon as a non-root user (Rootless mode)](https://docs.docker.com/engine/security/rootless/)

## Kubernetes

* Troubleshooting
    * [Safely Drain a Node](https://kubernetes.io/docs/tasks/administer-cluster/safely-drain-node/)
    * [Migrating the workloads](https://cloud.google.com/kubernetes-engine/docs/tutorials/migrating-node-pool#step_4_migrate_the_workloads)

```shell
#當使用GKE的k8s時，如果需要擴增node pool，但原先舊有node pool已有的deployment已掛載了PersistentVolumeClaim，執行kubectl drain遇到錯誤，該如何處理?
#將 PersistentVolumeClaim 轉移到新的 StorageClass。
#您需要先建立一個新的 StorageClass，然後將 PersistentVolumeClaim 轉移到這個 StorageClass 上。可以使用下列指令來轉移：
kubectl patch pvc <pvc-name> -p '{"spec":{"storageClassName":"<new-storage-class-name>"}}'

```

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