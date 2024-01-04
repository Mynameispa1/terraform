resource "aws_instance" "ec2" {
    ami = data.aws_ami.centos.id
    instance_type = "t2.small"
    

    tags = {
        Name = "data-source"
    }
}