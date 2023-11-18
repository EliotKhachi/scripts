#!/bin/bash
# delete file system in region us-east-1 with a specific id
aws efs delete-file-system --region us-east-1 --file-system-id fs-01b7613b29aa10477
