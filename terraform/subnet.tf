resource "aws_subnet" "public_A" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.subnet1_cidr_block}"
  map_public_ip_on_launch = true
  availability_zone = "${var.subnet1_avail_zone}"

  tags = {
    Name = "masterclass"
  }
}

resource "aws_subnet" "private_A" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.subnet2_cidr_block}"
  availability_zone = "${var.subnet2_avail_zone}"

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
