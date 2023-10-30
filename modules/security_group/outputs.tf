# output "id" {
#   value = aws_security_group.security_groups[*].id
# }    


output "id" {
  value = [
    for i in range(length(module.security_group)) :
    {
      "id"             = module.aws_security_group.security_group[i].id
      # "subnet_address_prefix" = module.subnets[i].address_prefix
    }
  ]
  description = "List of Security Group Ids"
}