provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "main" {
  cidr_block = "${var.base_cidr_block}"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags  = {
    Name = "masterclass"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags  = {
    Name = "masterclass"
  }
}
