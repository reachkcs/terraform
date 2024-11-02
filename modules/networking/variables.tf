variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    type = string
}

variable "azs" {
    description = "Availability zones"
    type = list
}

variable "public_subnet_cidrs" {
    description = "Public Subnet CIDRs"
    type = list
}

variable "private_subnet_cidrs" {
    description = "Private Subnet CIDRs"
    type = list
}

variable "env" {
    description = "Environment"
    type = string
}