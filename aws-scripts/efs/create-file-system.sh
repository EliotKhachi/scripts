#!/bin/bash
# creates an encrypted, backed-up, general purpose, elastic EFS in region us-east-1 
aws efs create-file-system --creation-token MyFirstEFS --backup --encrypted --performance-mode generalPurpose --throughput-mode elastic --region us-west-1 --tags Key=Name,Value="Test File System"
