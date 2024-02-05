locals {
  root_volume_type       = var.root_volume_type
  root_iops              = contains(["io1", "io2", "gp3"], var.root_volume_type) ? var.root_iops : null
  ebs_iops               = contains(["io1", "io2", "gp3"], var.ebs_volume_type) ? var.ebs_iops : null
  root_throughput        = var.root_volume_type == "gp3" ? var.root_throughput : null
  ebs_throughput         = var.ebs_volume_type == "gp3" ? var.ebs_throughput : null

  reboot_actions_ok   =  ["arn:aws:sns:${var.region}:${var.ACCTID}:Ec2RebootRecover"]
  recover_actions_ok  =  ["arn:aws:sns:${var.region}:${var.ACCTID}:Ec2RebootRecover"] 
  reboot_actions_alarm = ["arn:aws:automate:${var.region}:ec2:reboot"]
  recover_actions_alarm = ["arn:aws:automate:${var.region}:ec2:recover"]
  iam_name  =  join("_", [var.aws_ec2_name , "IaM_Role"])

  ##List the New Security Groups to be created and the Ingress rules for each. Naming Convention for
  #Security Groups  SG_{EC2_Instance_Name}_{Unique Number or Name}
  security_rules = {
  join("-", ["SG", var.aws_ec2_name , "InstanceSecurityGroup", "1"]) = {
    "rule1" = { type = "ingress", from_port = 22, to_port = 3389, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "For SSH" },
    "rule2" = { type = "ingress", from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = ["10.0.0.16/28"], description = "For SSH" },
    "rule3" = { type = "egress", from_port = 22, to_port = 22, protocol = "tcp", cidr_blocks = ["10.0.0.16/28"], description = "For SSH" }
  }
  join("-", ["SG", var.aws_ec2_name , "InstanceSecurityGroup", "2"]) = {
    "rule1" = { type = "ingress", from_port = 22, to_port = 22, protocol = "tcp" , cidr_blocks = ["10.0.0.16/28"], description = "For SSH"}
  }
}

existing_sg_rules = {
sg-0bd541cafc1955479 = {
# "rule1" = { type = "ingress", from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "For SSH" }
# },
#sg-0294c098f15df980e = {
#"rule1" = { type = "ingress", from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "For SSH" }
#}
} 
}
}
