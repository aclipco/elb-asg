resource "aws_s3_bucket" "b" {
  bucket = "acceslogselb"
  acl    = "public"

  tags = {
    Name        = "elb"
    Environment = "Dev"
  }
}