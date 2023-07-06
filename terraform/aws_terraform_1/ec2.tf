### Creating an instance###

resource "aws_instance" "web" {
  ami           = "ami-02eb7a4783e7e9317"
  instance_type = "t2.micro"
      # giving how many instances we need ( if you don't mention count=1)
    #count =  5

    #adding our security group
 security_groups = [aws_security_group.TF_SG.name]

    # Creating key-pair with direct aws
  #key_name = "terraform-1-key"
  
    # for getting the key with 2nd way
    key_name = "terraform-2-key"

  tags = {
    Name = "HelloWorld"
  }


    # User DATA in aws using terraform
    user_data = file("script.sh")

}

### Creating key-pair with documentation (2nd way) ###
resource "aws_key_pair" "terraform-2-key" {
  key_name   = "terraform-2-key"
      #creating public key
  public_key = tls_private_key.rsa.public_key_openssh
}
    # creating a ssh key
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
  # storing private key in local machine

resource "local_file" "terraform-2-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tfkey"
}



### Security group using terraform###

resource "aws_security_group" "TF_SG" {
  name        = "security group using terraform"
  description = "security group using terraform"
  vpc_id      = "vpc-04c6c6346266afdc2"

    # Inbound rules
  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
   ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    #outbound rules
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "TF_SG"
  }
}