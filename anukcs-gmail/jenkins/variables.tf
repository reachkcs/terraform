# Env
variable "env" {
  default = "dev"
}

variable "region" {
  description = "The AWS region where the resources will be created"
  type        = string
  default     = "us-east-1"
}

#
# Network related
#
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
  type    = list(any)
}

variable "private_subnet_cidrs" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

#
# EC2 related
#
variable "ami_id" {
  description = "The Amazon Linux 2023 AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-012967cc5a8c9f891"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The EC2 key pair to use for SSH access"
  type        = string
  default     = "KCS"
}

variable "subnet_id" {
  description = "The subnet ID in which to launch the EC2 instance."
  type        = string
  default     = "subnet-09dcf1f0eb34e810d"
}

#
# EKS related
#
variable "cluster_name" {
  default = "dev-eks-cluster"
}

variable "node_instance_type" {
  default = "t2.micro" # or "t3.micro" if you don't have ARM compatibility
}

