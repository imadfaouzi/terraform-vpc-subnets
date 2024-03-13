variable "instance_name" {
  description = "The name of the EC2 instance"
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the EC2 instance"
}

variable "security_group_id" {
  description = "List of security group names to attach to the EC2 instance"
}



# ami_id
variable "ami_id" {
  description = "the AMI ID to use for the EC2 instance"
  default = "ami-0440d3b780d96b29d"
}

# instance_type
variable "instance_type" {
  description = "The type of instance to launch"
  default = "t2.micro"
}