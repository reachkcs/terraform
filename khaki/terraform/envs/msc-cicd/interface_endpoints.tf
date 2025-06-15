module "ssm_interface_endpoints" {
  source = "../../modules/network/interface_endpoints"

  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids
  security_group_ids = [module.interface_endpoints_sg.security_group_id]

  service_names = [
    "ssm",
    "ssmmessages",
    "ec2messages",
    "ec2"
  ]

  tags = local.default_tags
}
