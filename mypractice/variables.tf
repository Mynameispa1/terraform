variable "ami_value" {
    type = string

}

variable "instance_value" {
    type = string
    
}

variable "sg_name" {
  type = string
  default = "roboshop"
}

variable "sg_description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}