variable "vpc_name" {
  description = "Name of the VPC"
  default     = "my-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_a_cidr" {
  description = "CIDR block for Public Subnet A"
  default     = "10.0.0.0/24" # this will network range start from 10.0.0.0 to 10.0.0.255
}

variable "public_subnet_b_cidr" {
  description = "CIDR block for Public Subnet B"
  default     = "10.0.1.0/24" # this will network range start from 10.0.1.0 to 10.0.1.255
}

variable "public_subnet_a_az" {
  description = "Availability Zone for Public Subnet A"
  default     = "us-east-1a"
}

variable "public_subnet_b_az" {
  description = "Availability Zone for Public Subnet B"
  default     = "us-east-1b"
}

variable "private_subnet_a_cidr" {
  description = "CIDR block for Private Subnet A"
  default     = "10.0.16.0/24"
}

variable "private_subnet_b_cidr" {
  description = "CIDR block for Private Subnet B"
  default     = "10.0.17.0/24"
}

variable "private_subnet_a_az" {
  description = "Availability Zone for Private Subnet A"
  default     = "us-east-1a"
}

variable "private_subnet_b_az" {
  description = "Availability Zone for Private Subnet B"
  default     = "us-east-1b"
}
