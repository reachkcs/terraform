variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instances"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t3.micro"
}

variable "iam_instance_profile" {
  type        = string
  description = "IAM instance profile for EC2 instances"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for placing EC2s"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs"
}

variable "instance_count" {
  type        = number
  description = "Number of EC2 instances to create"
  default     = 1
}

variable "name_prefix" {
  type        = string
  description = "Prefix for instance names"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
