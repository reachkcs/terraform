resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-mscibs-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "terraform-mscibs-locks"
    Environment = "global"
    ManagedBy   = "terraform"
  }
}
