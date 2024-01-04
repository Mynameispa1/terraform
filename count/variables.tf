variable "ami_id" {
    type=string
    default = "ami-03265a0778a880afb"
}

variable "instance_names" {
    type = list
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "zone_id" {
    type = string
    default = "Z1024693OKJAW10DDB2X"
}

variable "domain_name" {
    type =  string
    default = "pavankumarmuvva.online"
}


