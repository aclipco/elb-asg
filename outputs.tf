

output "this_autoscaling_group_id" {
  description = "The autoscaling group id"
  value       = "${module.asg.asg_name.id}"
}