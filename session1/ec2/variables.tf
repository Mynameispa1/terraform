variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg-description" {
    type = string
    default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
    type = string
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
} 

variable "ami-value" {
    type = string
    default = "ami-03265a0778a880afb"
}