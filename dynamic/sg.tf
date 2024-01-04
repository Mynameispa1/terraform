resource "aws_security_group" "roboshop-all" {
    name = "dynamic-demo"
    description = "dynamic-demo"

     dynamic ingress {
        for_each = var.ingress_rules
        content {
         description      = ingress.value["description"]
         from_port        = ingress.value["from_port"]
         to_port          = ingress.value["to_port"]
         protocol         = ingress.value["protocol"]
         cidr_blocks      = ingress.value["cidr_blocks"]
        }
   
}
        tags = {
            Name = "dynamic-demo"
        }
}