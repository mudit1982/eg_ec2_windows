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
  
variable "tags" {
    default = {
      BackupSchedule             = "DR1y"
      BusinessOwner              = "test@hotstar.com"
      BusinessTower              = "test@hotstar.com"
      InstanceIP                 = "10.33.21.25"
      Name                       = "SSB-WPX-001-P"
      OperatingSystem            = "Windows Server 2022"
      OperatingSystemSupportTeam = "test@hotmail.com"
      scheduler                  = "ec2-startstop"
      ServerProcess              = "service MS "
      ServerRoleType             = "Application"
      ServiceCriticality         = "High"
      Subnet-id                  = "subnet-04eff055558594bd7"
      VPC-id                     = "vpc-0419802ed12eec58a"
      TicketReference            = "CHG0050760"
      DNSEntry                   = "csdasd"
      DesignDocumentLink         = "acbv"
    }
    description = "Tags for WIndows Ec2 instances"
    type        = map(string)
  }


