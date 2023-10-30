variable "ebs_volume_count" {
  type        = number
  description = "Count of EBS volumes that will be attached to the instance"
}


variable "availability_zone" {
  type        = string
  description = "Availability Zone the instance is launched in. If not set, will be launched in the first AZ of the region"
}


variable "ebs_volume_size" {
  type        = number
  description = "Size of the additional EBS volumes in gigabytes"
}

variable "ebs_iops" {
  type        = number
  description = "Amount of provisioned IOPS. This must be set with a volume_type of `io1`, `io2` or `gp3`"
}


variable "ebs_throughput" {
  type        = number
  description = "Amount of throughput. This must be set if volume_type is set to `gp3`"
}

variable "ebs_volume_type" {
  type        = string
  description = "The type of the additional EBS volumes. Can be standard, gp2, gp3, io1 or io2"
}

variable "ebs_volume_encrypted" {
  type        = bool
  description = "Whether to encrypt the additional EBS volumes"
}


variable "tags" {
    description = "Tags for WIndows Ec2 instances"
    type        = map(string)
  }