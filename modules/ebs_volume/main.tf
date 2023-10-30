resource "aws_ebs_volume" "default" {
  count             = var.ebs_volume_count
  availability_zone = var.availability_zone
  size              = var.ebs_volume_size
  iops              = var.ebs_iops
  throughput        = var.ebs_throughput
  type              = var.ebs_volume_type
  tags              = var.tags
  encrypted         = var.ebs_volume_encrypted
  #kms_key_id        = var.kms_key_id
}

