resource "aws_instance" ec2{
    ami = "ami-0f3c7d07486cad139"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.roboshop-all.id]

    tags = {
      Name = "pavan"
     }
}

resource "aws_security_group" "roboshop-all" {
  name        = "var.sg_name"
  description = "var.sg_description"
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Allow all ports"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

}



