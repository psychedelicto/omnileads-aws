provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.12.0.0/16"
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
