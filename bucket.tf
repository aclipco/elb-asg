resource "aws_s3_bucket" "b" {
  bucket = "acceslogselb"
  acl    = "public-read-write"

  tags = {
    Name        = "elb"
    Environment = "Dev"
  }
}

policy = <<POLICY

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::aws-account-id:root"
      },
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::bucket-name/prefix/*"
    }
  ]
}