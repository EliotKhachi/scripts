#!/bin/bash
aws s3api create-bucket \
    --bucket eliot-pc-backup \
    --region us-west-1 \
    --create-bucket-configuration LocationConstraint=us-west-1
