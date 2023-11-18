#!/bin/bash
aws efs describe-mount-targets \
    --file-system-id fs-00c3a0300e29e66cd \
    --region us-west-1 \
#   -- profile adminuser
