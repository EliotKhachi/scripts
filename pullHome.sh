#!/bin/bash
DISK_MOUNT_PATH="/mnt/backup"
DISK_DEVICE="/dev/sda"

## Sync directories to backup server. Exclude directories that are not needed.
sudo rsync -avxz -e "ssh -i /home/$USER/.ssh/rpi" \
    --exclude=".cache" \
    --exclude=".local/share/Trash" \
    --exclude="Downloads" \
    --exclude="Documents/PimsleurCompleteCollection" \
    --include=".*" \
    $PI_USERNAME@$PI_ADDRESS:$DISK_MOUNT_PATH/home/$USER/* /home/$USER
