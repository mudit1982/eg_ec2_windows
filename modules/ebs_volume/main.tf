resource "aws_ebs_volume" "project-iac-ebs" {
  # count = "${var.create ? length(var.azs) * var.ebs_volumes : 0}"
  count = var.ebs_volumes
  availability_zone = var.azs
  encrypted         = var.encrypted
  # iops              = "${var.iops}"
  size              = var.size
  snapshot_id       = var.snapshot_id
  type              = var.type
  kms_key_id        = var.kms_key_id

  tags              = var.tags
}

