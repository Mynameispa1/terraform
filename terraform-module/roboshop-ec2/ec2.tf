module "roboshop_ec2" {
  source = "../pavan_modules"
  instance_type = var.instance_type
#   tags = var.tags
}