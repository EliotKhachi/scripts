#!/bin/bash
## launch one t2.micro instance from an Amazon Linux 2 Graphics AMI in us-west-1a with ports 80 and 22 open
aws ec2 run-instances --image-id ami-0d930880881b0774b --count 1 --instance-type t2.micro --key-name "EC2 Tutorial" --security-group-id sg-0c5d298f19df3e760 --subnet-id subnet-02b42d55717aa6bed
