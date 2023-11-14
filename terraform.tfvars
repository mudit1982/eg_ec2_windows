region="us-east-2"
ACCTID=215691912540
iam_name = "terraform-ec2-windows"
vpc_id  = "vpc-0777935da25d06fe3"
ami_id  = "ami-00744e52917f35c39"
availability_zone = "us-east-2a"
instance_type = "t2.micro"
key_name  = "Windows_kp"
subnet_id  = "subnet-03585b0505602f1a7"
root_volume_type ="gp2"
root_volume_size ="40"
ebs_volume_count ="2"
security_groups = ["sg3","sg4"]
instance_profile_name="test_profile_new"
private_ip="10.0.0.8"

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

##Tags to be passed as variables. These would be appended to the pre defined tags in variables.tf
Environment="Dev"
ApplicationFunctionality = "Test"
ApplicationDescription = "To test"
ApplicationOwner="abc@hotmail.com"
ApplicationTeam="Team1"
BackupSchedule="DR7y"
BusinessTower="abc@gmail.com"
BusinessOwner="abc@gmail.com"
ServiceCriticality="High"




######Ingress and Egress rules for the New Security Groups.The number of rules should match or be less
##than the count of new security groups

ingress_rules =[
 
{
      from_port   = "80"
      to_port     = "80"
      protocol    = "tcp"
      cidr_block  = "192.168.161.215/32"
      description = "test"
    },
    {
      from_port   = "8084"
      to_port     = "8084"
      protocol    = "tcp"
      cidr_block  = "192.168.161.215/32"
      description = "test"
    }
]


  
######Ingress and Egress rules for the New Security Groups.The number of rules should match or be less
##than the count of new security groups
    egress_rules = [

        {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_block  = "192.168.161.215/32"
        description = "test"
      },
      {
        from_port   = 8084
        to_port     = 8084
        protocol    = "tcp"
        cidr_block  = "192.168.161.215/32"
        description = "test"
      }

    ]
    
    