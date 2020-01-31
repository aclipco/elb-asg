resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_80_443.id]
  vpc_zone_identifier       = [vpc_zone_identifier.vpc_zone_identifier1.id, vpc_zone_identifier.vpc_zone_identifier2.id, vpc_zone_identifier.vpc_zone_identifier3.id]
  enable_deletion_protection = true

  access_logs {
    bucket  = [s3_bucket.task3devenv.name]
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}