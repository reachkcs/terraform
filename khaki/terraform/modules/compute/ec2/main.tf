resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = element(var.subnet_ids, count.index)
  vpc_security_group_ids = var.security_group_ids
  iam_instance_profile = var.iam_instance_profile

  tags = merge(
    {
      "Name" = "${var.name_prefix}-${count.index}"
    },
    var.tags
  )
}