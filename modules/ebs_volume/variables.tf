variable "region" {
  type        = string
  description = "AWS Region the instance is launched in"
  default     = ""
}

#AWS Availability zone where resources are created
variable "azs" {
  description = "(Required) The AZs where the EBS volume will exist"
  type        = string
  default     = ""
}

variable "INSTANCE_ID" {
  description = "(Required) The Instance ID of the Instance to attach the created EBS"
  type        = string
  default     = ""
}


#Size of the EBS needed to be created
variable "size" {
  description = "(Optional) The size of the drive in GiBs"
  type        = list(number)
  default     = []
}

variable "create_from_snapshot" {
  description = "Create EBS Volume from Snapshot"
  type        = bool
  default     = false
}




variable "ebs_device_name" {
  type        = list(string)
  description = "Name of the EBS device to mount"
  #default     = ["/dev/xvdb", "/dev/xvdc", "/dev/xvdd", "/dev/xvde", "/dev/xvdf", "/dev/xvdg", "/dev/xvdh", "/dev/xvdi", "/dev/xvdj", "/dev/xvdk", "/dev/xvdl", "/dev/xvdm", "/dev/xvdn", "/dev/xvdo", "/dev/xvdp", "/dev/xvdq", "/dev/xvdr", "/dev/xvds", "/dev/xvdt", "/dev/xvdu", "/dev/xvdv", "/dev/xvdw", "/dev/xvdx", "/dev/xvdy", "/dev/xvdz"]
default = [""]
}




variable "create" {
  description = "(Optional) Whether to create this resource or not"
  type        = string
  default     = true
}

variable "ebs_volumes" {
  description = "(Optional) Number of EBS volumes to create"
  type        = string
  # default = "1"
}



variable "encrypted" {
  description = "(Optional) If true, the disk will be encrypted"
  type        = string
  default     = true
}

variable "iops" {
  description = "(Optional) The amount of IOPS to provision for the disk"
  type        = string
  default     = "100"
}


variable "snapshot_id" {
  description = "(Optional) A snapshot to base the EBS volume off of"
  type        = string
  default     = ""
}

variable "type" {
  description = "(Optional) The type of EBS volume"
  type        = string
  default     = "standard"
}

variable "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key"
  type        = string
  default     = ""
}


variable "ebs_tags" {
    description = "Tags for WIndows Ec2 instances"
    type        = map(string)
  }

variable "instance_id" {
  description = "ID of the Instance created"
  type        =  string
  default     = ""
}