resource "aws_instance" "web" {
  ami               = var.AMIS[var.REGION]
  instance_type     = "t2.micro"
  availability_zone = var.ZONE1

  key_name               = "terraform-1-key"
  vpc_security_group_ids = ["sg-09c812d27a4f86c40"]
  tags = {
    Name = "HelloWorld"
  }
}