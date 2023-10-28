# automation

## Guides/Tips/misc...

* [terraform](https://www.terraform.io/)
* [terraform-provider-proxmox](https://github.com/Telmate/terraform-provider-proxmox)

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