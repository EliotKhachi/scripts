#!/bin/bash
aws ec2 create-key-pair --key-name EC2Tutorial --query 'KeyMaterial' --output text > EC2Tutorial.pem
