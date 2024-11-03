variable "region" {
  description = "AWS region to deploy EKS cluster"
  type = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type = string
}

variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
}

variable "public_subnet_ids" {
  description = "List of subnet IDs where the EKS cluster will place its network interfaces"
  type = list
}

variable "vpc_id" {
  description = "VPC in which the EKS cluster is created"
  type = string
}
