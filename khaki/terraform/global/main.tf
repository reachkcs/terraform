provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "s3_logs" {
  source = "../modules/s3"
  bucket_name = "centralized-logs-${var.account_id}"
  versioning  = true
  force_destroy = false
  tags = var.tags
}

module "iam_admin_group" {
  source = "../modules/iam"
  group_name = "admin"
  policies = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}
