iam_name = "terraform-ec2-windows"
vpc_id  = "vpc-0419802ed12eec58a"
ami_id  = "ami-00744e52917f35c39"
availability_zone = "us-east-2a"
instance_type = "t2.nano"
key_name  = "Windows_kp"
subnet_id  = "subnet-0b86a94123ccf1094"
root_volume_type ="gp2"
root_volume_size ="40"
ebs_volume_count ="2"
security_groups = ["sg3","sg4"]
instance_profile_name="test_profile_new"

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




######Ingress and Egress rules for the New Security Groups.The number of rules should match or be 
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

  
#  {
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_block  = "192.168.161.215/32"
#       description = "test"
#     },
#     {
#       from_port   = 8084
#       to_port     = 8084
#       protocol    = "tcp"
#       cidr_block  = "192.168.161.215/32"
#       description = "test"
#     },
#  }
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
    
    


# egress_rules = {
#     test-123-udp         = [124, 125, "udp", "test", "NTP"]
#     gtg-456-tcp          = [456, 456, "tcp", "test", "Test"]
# }

# {
#  [
#     {
#       from_port   = 80  
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_block  = "192.168.161.215/32"
#       description = "test"
#     },
#     {
#       from_port   = 8084
#       to_port     = 8084
#       protocol    = "tcp"
#       cidr_block  = "192.168.161.215/32"
#       description = "test"
#     },
#   ]
# }