resource "aws_s3_bucket" "b" {
  bucket = "acceslogselb"
  acl    = "private"

  tags = {
    Name        = "elb"
    Environment = "Dev"
  }
}