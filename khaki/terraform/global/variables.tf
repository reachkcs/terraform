variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Default AWS region for all environments"
}

variable "aws_profile" {
  type    = string
}

variable "account_id" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {
    ManagedBy = "terraform"
    Environment = "global"
  }
}
