

output "this_autoscaling_group_id" {
  description = "The autoscaling group id"
  value       = "${module.asg.this_autoscaling_group_id}"
}
