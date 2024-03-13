# Create EC2 instance
resource "aws_instance" "ec2_instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id  # Use the subnet ID provided by the VPC module

  key_name      = "my-terraform-keyPaire2"
  vpc_security_group_ids = var.security_group_id # Use the security group ID provided by the security group module

  # Add other EC2 instance configurations as needed

  tags = {
    Name = var.instance_name
  }
}