resource "aws_ebs_volume" "project-iac-ebs" {
  count = var.ebs_volumes
  availability_zone = var.azs
  encrypted         = var.encrypted
  # iops              = "${var.iops}"
  size              = var.size[count.index]
  snapshot_id       = var.snapshot_id
  type              = var.type
  kms_key_id        = var.kms_key_id

    tags = var.efs_tags
}


resource "aws_volume_attachment" "project-iac-volume-attachment" {
  count = var.ebs_volumes
  device_name = var.ebs_device_name[count.index]
  volume_id   = aws_ebs_volume.project-iac-ebs[count.index].id
  instance_id = var.instance_id
}



