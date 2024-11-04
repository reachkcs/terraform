# Env
variable "env" {
    default = "dev"
}

# Networking related
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "azs" {
    default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
    type = list
}

variable "private_subnet_cidrs" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

#Compute related
variable "instance_type" {
  default = "t2.micro"
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

/*
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

*/