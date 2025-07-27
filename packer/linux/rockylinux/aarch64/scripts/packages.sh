#!/usr/bin/env sh
set -euxo pipefail

# require tools
sudo dnf update -y

sudo dnf install -y \
                 vim\
                 curl\
                 wget\
                 git

# Docker engine/cli/compose/...etc
# src: https://docs.docker.com/engine/install/rhel/#install-using-the-repository
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker

# kubernetes
# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
which kubectl
kubectl version
rm -f kubectl.sha256

# k9s
# src: https://k9scli.io/topics/install/
wget https://github.com/derailed/k9s/releases/download/v0.50.9/k9s_linux_arm64.rpm
wget https://github.com/derailed/k9s/releases/download/v0.50.9/checksums.sha256
echo "$(cat checksums.sha256)  k9s_linux_arm64.rpm" | sha256sum --check
sudo rpm -ivh k9s_linux_arm64.rpm

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Golang
# src: https://go.dev/dl/
wget https://go.dev/dl/go1.24.5.linux-arm64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.24.5.linux-arm64.tar.gz

# Python
# uv: An extremely fast Python package and project manager, written in Rust.
# https://docs.astral.sh/uv/getting-started/installation/
curl -LsSf https://astral.sh/uv/install.sh | sh

# src: https://devguide.python.org/getting-started/setup-building/#build-dependencies
sudo dnf install git pkg-config
sudo dnf install dnf-plugins-core  # install this to use 'dnf builddep'
# sudo dnf builddep python3

sudo dnf install \
      gcc gcc-c++ gdb lzma glibc-devel libstdc++-devel openssl-devel \
      readline-devel zlib-devel libzstd-devel libffi-devel bzip2-devel \
      xz-devel sqlite sqlite-devel sqlite-libs libuuid-devel gdbm-libs \
      perf expat expat-devel mpdecimal python3-pip