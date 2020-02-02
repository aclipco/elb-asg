resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  autoscaling_group_name = "${module.asg.this_autoscaling_group_id}"
  elb                    = "${aws_lb.test}"


 depends_on = [aws_lb.test]
}
