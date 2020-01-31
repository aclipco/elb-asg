resource "aws_s3_bucket" "b" {
  bucket = "acceslogselb"
  acl    = "public-read-write"

  tags = {
    Name        = "elb"
    Environment = "Dev"
  }
}