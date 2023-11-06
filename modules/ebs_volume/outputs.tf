output "ebs_volume_id" {
  description = "The volume ID"
  value       = "${concat(aws_ebs_volume.project-iac-ebs.*.id, tolist([""]))}"
}

output "ebs_volume_arn" {
  description = "The volume ARN"
  value       = "${concat(aws_ebs_volume.project-iac-ebs.*.id, tolist([""]))}"
}

