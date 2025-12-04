resource "aws_s3_bucket" "remote_s3_backend" {
    bucket = "remote-s3-backend-naman-ec2"

    tags = {
        Name = "remote-s3-backend-naman-ec2"
    }
}