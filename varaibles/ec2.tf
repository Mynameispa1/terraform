resource "aws_instance" "myec2" {
    ami = var.ami_id #devops-practice
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.mysg.id]


tags = var.tags   
}