data "aws_ami" "amazon-linux-2" {
 most_recent = true
   owners = ["amazon"]


 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }


 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }
}


resource "aws_instance" "oml_tests" {
  ami = "${data.aws_ami.amazon-linux-2.id}"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.sg_oml.id}"]
  subnet_id = aws_subnet.public_A.id
  key_name = aws_key_pair.ubuntu_asus.id
  user_data = "${file("user_data/omlapp.sh")}"



  tags = {
    Name = "masterclass"
    Env = "develop"
  }
}
