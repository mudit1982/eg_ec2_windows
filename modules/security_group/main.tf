resource "aws_security_group" "security_groups" {
  name = var.name
  description = var.description
  vpc_id = var.vpc_id

  // To Allow SSH Transport

  // To Allow Port 80 Transport
}
