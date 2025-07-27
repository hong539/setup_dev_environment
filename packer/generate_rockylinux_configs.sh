#!/usr/bin/env bash
set -euxo pipefail

ARCHES=("aarch64" "x86_64")
VERSIONS=("8.10" "9.6" "10.0")

mkdir -p rockylinux
cd rockylinux || exit

for arch in "${ARCHES[@]}"; do
  mkdir -p "${arch}"
  for version in "${VERSIONS[@]}"; do
    major_version="${version%%.*}"
    fname="${arch}/rocky${major_version}.pkr.hcl"
    cat > "$fname" <<EOF
variable "rocky_version" {
  type    = string
  default = "${version}"
}

variable "arch" {
  type    = string
  default = "${arch}"
}

locals {
  iso_url = "https://download.rockylinux.org/pub/rocky/\${var.rocky_version}/isos/\${var.arch}/Rocky-\${var.rocky_version}-Minimal-\${var.arch}.iso"
}

source "qemu" "rocky" {
  iso_url     = local.iso_url
  iso_checksum = "auto"
  output_directory = "output/rocky-\${var.rocky_version}-\${var.arch}"
  accelerator = "${arch}" == "aarch64" ? "hvf" : "kvm"
  shutdown_command = "shutdown -h now"

  disk_size   = "10000"
  format      = "qcow2"
  headless    = true
  ssh_username = "packer"
  ssh_password = "packer"
  ssh_timeout  = "20m"
  memory      = 2048
  cpus        = 2
  vm_name     = "rocky-\${var.rocky_version}-\${var.arch}"
  boot_command = [
    "<tab> inst.text inst.ks=cdrom:/ks.cfg<enter>"
  ]
}

build {
  sources = ["source.qemu.rocky"]
}
EOF
    echo "Generated: $fname"
  done
done
