# Public subnets. Each subnet is a different AZ
resource "aws_subnet" "public" {
  count = "${length(var.azs)}"
  vpc_id = "${aws_vpc.myvpc.id}"
  cidr_block = "${cidrsubnet(var.vpc_cidr, 8, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "${var.env}-Public subnet - ${element(var.azs, count.index)}"
    "Terraform" = true
    "Environment" = "${var.env}"
  }
}

# Private subnets. Each subnet in a different AZ
resource "aws_subnet" "private" {
  count = "${length(var.azs)}"
  vpc_id = "${aws_vpc.myvpc.id}"

  # Take into account CIDR blocks allocated to the public subnets
  cidr_block = "${cidrsubnet(var.vpc_cidr, 8, count.index + length(var.azs))}"
  availability_zone = "${element(var.azs, count.index)}"
  map_public_ip_on_launch = false

  tags = {
    "Name" = "${var.env}-Private subnet - ${element(var.azs, count.index)}"
    "Terraform" = true
    "Environment" = "${var.env}"
  }
}

#NAT Gateways
resource "aws_eip" "nat" {
  count = "${length(var.azs)}"

  tags = {
    "Name" = "${var.env}-Private Subnet ${count.index + 1}"
    "Terraform" = true
    "Environment" = "${var.env}"
  }
}

resource "aws_nat_gateway" "main" {
  count = "${length(var.azs)}"
  subnet_id = "${element(aws_subnet.public.*.id, count.index)}"
  allocation_id = "${element(aws_eip.nat.*.id, count.index)}"

  tags = {
    "Name" = "${var.env}-NAT - ${element(var.azs, count.index)}"
    "Terraform" = true
    "Environment" = "${var.env}"
  }
}
