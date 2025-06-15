provider "aws" {
  region  = var.aws_region
  profile = "prod-profile"
}

module "vpc" {
  source      = "../../modules/vpc"
  cidr_block  = var.vpc_cidr
  environment = var.environment
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
  tags = {
    Owner = "team@example.com"
    ManagedBy = "terraform"
  }
}
