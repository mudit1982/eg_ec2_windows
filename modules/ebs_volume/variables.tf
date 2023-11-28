variable "create" {
  description = "(Optional) Whether to create this resource or not"
  type        = string
  default     = true
}

variable "ebs_volumes" {
  description = "(Optional) Number of EBS volumes to create"
  type        = string
}

variable "azs" {
  description = "(Required) The AZs where the EBS volume will exist"
  type        = string
  default     = "us-east-2a"
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

variable "size" {
  description = "(Optional) The size of the drive in GiBs"
  type        = string
  default     = "20"
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

variable "ebs_volume_tags" {
  description = "(Optional) A mapping of tags to assign to the resource"
  type        = list
  default     = [
    {
      Name = "ebs-volume"
    }
  ]
}
  
variable "efs_tags" {
    default = {
    }
    description = "Tags for EFS Volume"
    type        = map(string)
  }

variable "snapshot_id" {
  description = "(Optional) A snapshot to base the EBS volume off of"
  type        = string
  default     = ""
}

