resource "aws_dynamodb_table" "dev-terraform_state_lock" {
  name           = "${var.dev-lock-table}"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "${var.dev-lock-table}"
  }
}

resource "aws_dynamodb_table" "prod-terraform_state_lock" {
  name           = "${var.prod-lock-table}"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "${var.prod-lock-table}"
  }
}