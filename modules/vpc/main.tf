# VPC
resource "aws_vpc" "my_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

# Internet Gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
}

######################################################
#          Create Subnets Public&Private            #
#####################################################

# Public Subnets   
resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_a_cidr
  availability_zone = var.public_subnet_a_az
  #enable auto-assign public ip
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet A"
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_b_cidr
  availability_zone = var.public_subnet_b_az
  #enable auto-assign public ip
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet B"
  }
}

# Private Subnets
resource "aws_subnet" "private_subnet_a" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_a_cidr
  availability_zone = var.private_subnet_a_az
  #enable auto-assign public ip
  map_public_ip_on_launch = true
  tags = {
    Name = "Private Subnet A"
  }
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_b_cidr
  availability_zone = var.private_subnet_b_az
  #enable auto-assign public ip
  map_public_ip_on_launch = true
  tags = {
    Name = "Private Subnet B"
  }
}

######################################################
#          Create Route Tables Public&Private        #
#####################################################

### public route table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
}
### private route table
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my_vpc.id
}


######################################################
#          Associate route table with subnets        #
#####################################################

# Associate public route table with public subnets A&B
resource "aws_route_table_association" "public_subnet_a_association" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet_b_association" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.public_route_table.id
}

# Associate private route table with private subnets A&B
resource "aws_route_table_association" "private_subnet_a_association" {
  subnet_id      = aws_subnet.private_subnet_a.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "private_subnet_b_association" {
  subnet_id      = aws_subnet.private_subnet_b.id
  route_table_id = aws_route_table.private_route_table.id
}

