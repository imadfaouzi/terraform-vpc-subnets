# ouput the name of security group
output "security_group_id" {
  value = [aws_security_group.terraform-sgroup.id]
}
