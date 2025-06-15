terraform {
  backend "s3" {
    bucket         = "terraform-mscibs"
    key            = "cicd/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-mscibs-locks"
    encrypt        = true
  }
}
