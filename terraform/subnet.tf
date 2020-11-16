resource "aws_subnet" "public_A" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.12.72.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "masterclass"
  }
}

resource "aws_subnet" "private_A" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.12.40.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "masterclass"
  }
}

resource "aws_route_table" "r" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "masterclass"
  }
}

resource "aws_route_table_association" "public_A_r" {
  subnet_id      = aws_subnet.public_A.id
  route_table_id = aws_route_table.r.id
}
