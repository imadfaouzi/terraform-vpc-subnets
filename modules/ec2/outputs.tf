# this output Ec2 instance public IP
output "ec2_public_ip" {
    value = aws_instance.ec2_instance.public_ip
}