# Route the public subnet traffic through the internet gateway
resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.myvpc.id}"

  tags = {
    "Name" = "${var.env}-Public route table"
    "Terraform" = true
    "Environment" = "${var.env}"
  }
}

resource "aws_route" "public_internet_gateway" {
  route_table_id = "${aws_route_table.public.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = "${aws_internet_gateway.main.id}"
}

resource "aws_route_table_association" "public" {
  count = "${length(var.azs)}"

  subnet_id = "${element(aws_subnet.public.*.id, count.index)}"
  route_table_id = "${aws_route_table.public.id}"
}

# Create a new route table for private subnets. 
# Route non-local traffic through the NAT gateway to the internet

resource "aws_route_table" "private" {
  count = "${length(var.azs)}"
  vpc_id = "${aws_vpc.myvpc.id}"

  tags = {
    "Name" = "${var.env}-Private route table - ${element(var.azs, count.index)}"
    "Terraform" = true
    "Environment" = "${var.env}"
  }
}

resource "aws_route" "nat_gateway" {
  count = "${length(var.azs)}"

  route_table_id = "${element(aws_route_table.private.*.id, count.index)}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = "${element(aws_nat_gateway.main.*.id, count.index)}"
}

resource "aws_route_table_association" "private" {
  count = "${length(var.azs)}"

  subnet_id = "${element(aws_subnet.private.*.id, count.index)}"
  route_table_id = "${element(aws_route_table.private.*.id, count.index)}"
}
