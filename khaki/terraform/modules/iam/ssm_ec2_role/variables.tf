variable "role_name" {
  type        = string
  description = "Name of the IAM role for EC2 SSM access"
}

variable "instance_profile_name" {
  type        = string
  description = "Name of the instance profile"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
