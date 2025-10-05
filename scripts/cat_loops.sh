#!/usr/bin/env bash
set -euxo pipefail

for i in ./example-filename-{0..9}; do echo $i; cat $i; echo ""; done