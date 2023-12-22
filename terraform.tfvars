region="us-east-2"
ACCTID=215691912540
vpc_id  = "vpc-0845479fd68896d42"
ami_id  = "ami-00744e52917f35c39"
availability_zone = "us-east-2a"
instance_type = "t2.micro"
key_name  = "Windows_kp"      
Subnet_Name="10.41.20.0-terraform-public-us-east-2a"
root_volume_type ="gp2" 
root_volume_size ="40"
instance_profile_name="test_profile_new"
private_ip="10.41.10.10"
eip_allocation_id="eipalloc-0d6d0d62a857c4999"

ebs_volume_count ="3"
##Provide this only if EBS to be created from Snapshot Id. Else leave this Blank
snapshot_id=""

##This should match the Count of EBS_Volumes.Also each EBS would be created in the azs specified
# with one to one mapping
# Do not use "/dev/xvda" as this is default mount for root volume
ebs_device_name=["/dev/xvdv","/dev/xvdc","/dev/xvdb"]
size = [20,30,40]

##Tags for the EC2 Instance
ec2_tags = {
      InstanceIP                 = "10.x.x.x"
      Name                       = "SSB-WPX-001-P"
      OperatingSystem            = "Windows Server 2022"
      OperatingSystemSupportTeam = "test@hotmail.com"
      scheduler                  = "ec2-startstop"
      ServerProcess              = "service MS "
      ServerRoleType             = "Application"
      TicketReference            = "CHG0050760"
      DNSEntry                   = "csdasd"
      DesignDocumentLink         = "acbv"
}

##Tags to be passed as variables. These would be appended to the pre defined tags under ec2_tags
Environment="Dev"
ApplicationFunctionality = "Test"
ApplicationDescription = "To test"
ApplicationOwner="abc@hotmail.com"
ApplicationTeam="Team1"
BackupSchedule="DR7y"
BusinessTower="abc@gmail.com"
BusinessOwner="abc@gmail.com"
ServiceCriticality="High"


##Tags for the EFS Volume
efs_tags = {
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



##List the New Security Groups to be created and the Ingress rules for each. Naming Convention for
#Security Groups  SG_{EC2_Instance_Name}_{Unique Number or Name}
# security_rules = {
#   sg_demo3 = {
#     "rule1" = { type = "ingress", from_port = 22, to_port = 22, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "For SSH" },
#     "rule2" = { type = "ingress", from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "For SSH" },
#     "rule3" = { type = "egress", from_port = 22, to_port = 22, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "For SSH" }
#   }
#   sg_demo4 = {
#     "rule1" = { type = "ingress", from_port = 22, to_port = 22, protocol = "tcp" , cidr_blocks = ["0.0.0.0/0"], description = "For SSH"}
#   }
# }

## New Ingress Rules can be added here to the existing Security Groups
# existing_sg_rules = {
# sg-0bd541cafc1955479 = {
# # "rule1" = { type = "ingress", from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "For SSH" }
# },
# #sg-0294c098f15df980e = {
# #"rule1" = { type = "ingress", from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "For SSH" }
# #}
# } 
    