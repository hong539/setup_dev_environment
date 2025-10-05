#!/bin/env bash

set -euxo pipefail

find ~/repos/setup_devops_environment -type f -exec sed -i 's/setup_dev_environment/setup_devops_environment/g' {} +