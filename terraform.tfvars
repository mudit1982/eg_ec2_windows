region="us-east-2"
ACCTID=215691912540
vpc_id  = "vpc-0777935da25d06fe3"
ami_id  = "ami-00744e52917f35c39"
availability_zone = "us-east-2a"
instance_type = "t2.nano"
key_name  = "Windows_kp"      
Subnet_Name="private-subnet-2a"
root_volume_type ="gp2" 
root_volume_size ="40"
instance_profile_name="test_profile_new"
private_ip="10.0.0.14"
eip_allocation_id="eipalloc-06b3817323ac9cd98"

ebs_volume_count ="2"
##Provide this only if EBS to be created from Snapshot Id. Else leave this Blank
snapshot_id=""

##This should match the Count of EBS_Volumes.Also each EBS would be created in the azs specified
# with one to one mapping
# Do not use "/dev/xvda" as this is default mount for root volume
ebs_device_name=["/dev/xvdv","/dev/xvdc"]
size = [20,30]

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


