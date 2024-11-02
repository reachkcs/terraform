terraform {
  backend "s3" {
    bucket = "my-terraform-states-kcs"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
    # Optional: Enable state locking
    dynamodb_table = "prod-terraform-state-lock"
  }
}
