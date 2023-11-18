#!/bin/bash
user="eliot"
sudo rsync -avxtz -e "ssh -i /home/eliot/.ssh/rpi" \
    --exclude="cdrom" \
    --exclude="boot" \
    --exclude="sbin" \
    --exclude="home/$user/.cache" \
    --exclude="home/$user/.local/share/Trash" \
    --exclude="home/$user/Downloads" \
    --exclude="dev" \
    --exclude="proc" \
    --exclude="sys" \
    --exclude="tmp" \
    --exclude="run" \
    --exclude="mnt" \
    --exclude="media" \
    --exclude="lost+found" \
    /* eliot@192.168.1.103:/mnt/backup
