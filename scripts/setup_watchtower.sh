#!/bin/bash

docker run -d \
  --name watchtower \
  --restart=always \
  -v /run/user/1000/docker.sock:/var/run/docker.sock \
  containrrr/watchtower \
  --schedule "0 0 * * * *" \
  --cleanup \
  setup_dev_environment

# systemctl --user enable watchtower
# systemctl --user start watchtower  