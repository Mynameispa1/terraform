resource "aws_instance" "myec2" {
  ami           = "ami-03265a0778a880afb"  #devops practice
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.mysg.id]

  tags = {
    Name = "Terraform"
  }
}

resource "aws_security_group" "mysg" {
  name        = "var.sg-name"
  description = "var.sg-description"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Allow all ports"
    from_port        = var.inbound-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
    tags = {
    Name = "roboshop-all-aws"
  }
}

