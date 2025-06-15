provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source         = "./modules/ec2"
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  key_name       = var.key_name
  subnet_id      = var.subnet_id
  security_group = var.security_group
}