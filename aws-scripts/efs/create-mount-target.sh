#!/bin/bash
aws efs create-mount-target \
    --file-system-id fs-00c3a0300e29e66cd \
    --subnet-id subnet-062dedc3cddbce3fc \
    --security-group sg-0c5d298f19df3e760 \
    --region us-west-1 \
#    --profile adminuser
