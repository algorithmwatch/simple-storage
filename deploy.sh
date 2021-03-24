#!/usr/bin/env bash

rsync -avz --exclude .git --exclude 'data.db*' . awlab1:~/code/simple-storage
ssh awlab1 "systemctl stop simplestorage.service && cd ~/code/simple-storage && ./build_docker.sh && ./create_docker.sh && systemctl start simplestorage.service"
