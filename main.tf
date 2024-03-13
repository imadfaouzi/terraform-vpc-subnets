# Call VPC module
module "vpc" {
  source = "./modules/vpc"
  # You can add input variables here
}

# Call Security Group module
module "security_group" {
  source = "./modules/security_group"
  # You can add other input variables here
}

# Call EC2 module
# module "ec2_instance" {
#   source = "./modules/ec2"

#   # create in subnet Public A
#   instance_name = "Public instance"
#   subnet_id              = module.vpc.public_subnet_a_id      # Use the first public subnet ID
#   security_group_id = module.security_group.security_group_id # Use the security group ID
# }
