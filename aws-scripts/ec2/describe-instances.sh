#!/bin/bash
# aws ec2 describe-instances --filters "Name=instance-state-name,Values=running"
aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].PublicIpAddress"
