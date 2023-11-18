# How to mount EFS to EC2
1. Get EFS file system id.
2. SSH into EC2.
3. Make sure `amazon-efs-utils` is installed on the EC2: `sudo yum install amazon-efs-utils`.  
4. run `sudo mount -t efs file-system-id efs-mount-point/`, i.e.
       `sudo mount -t efs fs-abcd123456789ef0 efs/`

For more options see [AWS EFS Docs](https://docs.aws.amazon.com/efs/latest/ug/efs-mount-helper.html#efs-mount-helper-how).  
