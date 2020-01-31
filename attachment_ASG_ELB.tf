resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  autoscaling_group_name = "${var.asg_name}"
  elb                    = "${aws_lb.test.id}"
}