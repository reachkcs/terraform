terraform {
  backend "s3" {
    bucket = "terraform-states-kcs"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    # Optional: Enable state locking
    # dynamodb_table = "dev-terraform-state-lock"
  }
}
