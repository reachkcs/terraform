variable "env" {
    default = "dev"
}

# EKS related
variable "region" {
  default     = "us-east-1"
}

variable "cluster_name" {
  default     = "dev-eks-cluster"
}

variable "node_instance_type" {
  default     = "t4g.micro"  # or "t3.micro" if you don't have ARM compatibility
}

variable "public_subnet_ids" {
  description = "List of subnet IDs where the EKS cluster will place its network interfaces"
  default = ["subnet-08a655c24591c9c51"]
  type = list
}

variable "vpc_id" {
  default = "vpc-0a1bf081a599310a3"
  description = "VPC in which the EKS cluster is created"
  type = string
}
