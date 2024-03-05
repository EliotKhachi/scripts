#!/bin/bash
DISK_MOUNT_PATH="/mnt/backup"
DISK_DEVICE="/dev/sda"

## Get latest version of scripts (update snap.txt, exclude.txt, and apt.txt)
git -C $REPOS/scripts pull origin

## Sync directories to backup server. Exclude directories that are not needed.
sudo rsync -avxz -e "ssh -i /home/$USER/.ssh/rpi" --exclude-from=exclude.txt \
    $PI_USERNAME@$PI_ADDRESS:$DISK_MOUNT_PATH/home/$USER/ /home/$USER/

## Install snap packages
xargs -a <(awk '! /^ *(#|$)/' "snap.txt") -r -- sudo snap install --classic ## installs packages from snap.txt, ignoring comments and empty lines
 
## Install apt packages
xargs -a <(awk '! /^ *(#|$)/' "apt.txt") -r -- sudo apt-get install ## installs packages from apt.txt, ignoring comments and empty lines
