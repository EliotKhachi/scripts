#!/bin/bash
# launch one t2.micro instance from an Amazon Linux 2 Graphics AMI with ports 80 and 22 open
# in us-west-1a subnet
# aws ec2 run-instances --image-id ami-0d930880881b0774b --count 1 --instance-type t2.micro --key-name "EC2 Tutorial" --security-group-id sg-0c5d298f19df3e760 --subnet-id subnet-02b42d55717aa6bed

# in us-west-1b subnet
aws ec2 run-instances \
    --image-id ami-0d930880881b0774b \
    --count 2 \
    --instance-type t2.micro \
    --key-name "EC2Tutorial" \
    --security-group-id sg-0c5d298f19df3e760 \
    --subnet-id subnet-062dedc3cddbce3fc \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=instance-1}]' \
    --user-data file:///home/eliot/Public/courses/aws-course-DVA-C02/ec2-fundamentals/ec2-user-data.sh
