resource "aws_instance" myec2 {
    ami = var.ami_id
    instance_type = var.instance_type == "mongodb" ? "t3.small" : "t2.micro"

tags = {
    Name= "web"
}    

}