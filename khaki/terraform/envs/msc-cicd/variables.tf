variable "vpc_id" {
  type        = string
  description = "VPC ID to attach resources like security groups"
  default = "vpc-00a8f4c60368f58aa"
}

variable subnet_ids {
  type        = list(string)
  description = "List of subnet IDs to attach resources like EC2 instances"
  default     = ["subnet-06afee81c2a516bc6"]
}