# created vpc with its components and security group
resource "aws_vpc" "new_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name_tag
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.new_vpc.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = var.subnet_name
  }
}

resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.new_vpc.id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "routetable" {
  vpc_id = aws_vpc.new_vpc.id

  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }
  tags = {
    Name = "RouteTable1"
  }
}

resource "aws_route_table_association" "route_association" {
  subnet_id = aws_subnet.subnet1.id
  route_table_id = aws_route_table.routetable.id
}

resource "aws_security_group" "security_group" {
  name = "new_sg"
  vpc_id = aws_vpc.new_vpc.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "NEW_security group"
  }
}
