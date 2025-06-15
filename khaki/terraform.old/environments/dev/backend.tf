terraform {
  backend "s3" {
    bucket         = "terraform-mscibs"
    key            = "dev/terraform.tfstate"
    region         = "us-gov-west-1"
    dynamodb_table = "terraform-mscibs-locks"
    encrypt        = true
  }
}