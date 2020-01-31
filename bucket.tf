resource "aws_s3_bucket" "b" {
  bucket = "acceslogselb"
  acl    = "log-delivery-write"

  tags = {
    Name        = "elb"
    Environment = "Dev"
  }
}