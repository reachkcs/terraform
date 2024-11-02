resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
        Name = "${var.env}-vpc"
        Environment = "${var.env}"
        Terraform = true
    }
}

resource "aws_internet_gateway" "main" {
    vpc_id = aws_vpc.myvpc.id

    tags = {
        Name = "${var.env}-igw"
        Environment = "${var.env}"
        Terraform = true
    }
}

