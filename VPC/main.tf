resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true

  tags = {
    Name = "VPC190820"
  }

}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "subnet_a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.sn_cidr_block
  availability_zone = data.aws_availability_zones.available.names[0]
}


resource "aws_internet_gateway" "TerraformIG" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table" "r" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = var.ext_cidr_block
    gateway_id = aws_internet_gateway.TerraformIG.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet_a.id
  route_table_id = aws_route_table.r.id
}