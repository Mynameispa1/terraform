resource "aws_instance" "web" {
  ami           = var.ami_id #devops-practice
  instance_type = local.instance_type
  tags = {
    Name = "locals"
  }
}

# resource "aws_route53_record" "www" {
#   #count = 11
#   count = length(var.instance_names)
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}" #interpolation
#   type    = "A"
#   ttl     = 1
#   records = [local.ip]
# }