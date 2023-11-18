#!/bin/bash
aws efs put-lifecycle-configuration \
    --file-system-id fs-00c3a0300e29e66cd \
    --lifecycle-policies TransitionToIA=AFTER_30_DAYS \
    --region us-west-1 \
#    --profile adminuser
