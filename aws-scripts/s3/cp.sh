#!/bin/bash
## Copy subdirectories in publicZk to public-zettelkasten s3 bucket. Exclude shell scripts, markdown files, and hidden files and directories.
aws s3 cp --dryrun /home/eliot/Public/repos/publicZk/ s3://public-zettelkasten/ --exclude "*.sh" --exclude "*.md" --exclude ".*" --recursive
## Copy subdirectories in public-zettelkasten s3bucket to cloudfront s3 bucket.
aws s3 cp --dryrun s3://public-zettelkasten/ s3://amazon-cloudfront-s3-secure-site-cus-s3bucketroot-1jdibk2916043/zettelkasten --recursive
