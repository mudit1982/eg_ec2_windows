resource "aws_security_group" "security_groups" {
  count = var.sg_count
  name  = var.name[count.index]
  description = var.description
  vpc_id = var.vpc_id
  // To Allow SSH Transport

  // To Allow Port 80 Transport
}
