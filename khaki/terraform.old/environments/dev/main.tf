provider "aws" {
  region  = var.aws_region
  profile = "dev-profile"
}

module "vpc" {
  source               = "../../modules/vpc"
  cidr_block           = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
  environment          = var.environment
  tags = {
    Owner = "team@example.com"
    ManagedBy = "terraform"
  }
}
