variable "vpc_id" {
  type        = string
  description = "VPC ID to attach interface endpoints"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for the endpoints"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs for the endpoint network interfaces"
}

variable "service_names" {
  type        = list(string)
  description = "List of AWS service short names (e.g., ssm, ec2messages)"
}

variable "tags" {
  type    = map(string)
  default = {}
}
