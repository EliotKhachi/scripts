#!/bin/bash
aws ec2 describe-images --owners self amazon # list all images accessible by you (owned by you and public by amazon)
