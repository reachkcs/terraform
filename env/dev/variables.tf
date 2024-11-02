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
}

variable "private_subnet_cidrs" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

#Compute related
variable "instance_type" {
  default = "t2.micro"
}