# automation

## Tools/Guides/Tips/misc...

* [OpenKore](https://github.com/OpenKore/openkore)
* [terraform](https://www.terraform.io/)
    * [Install Terraform](https://developer.hashicorp.com/terraform/downloads)
* [terraform-provider-proxmox](https://github.com/Telmate/terraform-provider-proxmox)

## ansible

* [Installing Ansible on Windows](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-windows)
* [Installing Ansible on Arch Linux](https://wiki.archlinux.org/title/Ansible#Installation)
* [ansible_roadmap_index](https://docs.ansible.com/ansible/latest/roadmap/ansible_roadmap_index.html)
* [ansible](https://github.com/ansible/ansible)
* [dysosmus/ansible-completion](https://github.com/dysosmus/ansible-completion)
* [ansible_community](https://docs.ansible.com/ansible_community.html)
* [Adding Ansible command shell completion](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#adding-ansible-command-shell-completion)

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

#If you chose the pip installation instructions:
python3 -m pip install --user argcomplete
```