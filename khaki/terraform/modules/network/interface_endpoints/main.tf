data "aws_region" "current" {}

resource "aws_vpc_endpoint" "this" {
  for_each = toset(var.service_names)

  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.${each.key}"
  vpc_endpoint_type = "Interface"
  subnet_ids        = var.subnet_ids
  security_group_ids = var.security_group_ids
  private_dns_enabled = true

  tags = merge(
    {
      Name = "endpoint-${each.key}"
    },
    var.tags
  )
}
