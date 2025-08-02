#!/usr/bin/env sh
set -euxo pipefail

#vmware cli tools
# src: https://www.reddit.com/r/vmware/comments/1f4cm4l/how_to_run_a_vmware_fusion_pro_vm_in_headless_mode/
vmrun -T fusion start myvm.vmx nogui