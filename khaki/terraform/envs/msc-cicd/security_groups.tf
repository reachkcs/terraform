module "ec2_sg" {
  source      = "../../modules/network/security_groups"
  name        = "cicd-ec2-sg"
  description = "Security group for CICD EC2 instances"
  vpc_id      = var.vpc_id

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow SSH from internal"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow HTTP"
    }
  ]

  tags = local.default_tags
}

module "interface_endpoints_sg" {
  source      = "../../modules/network/security_groups"
  name        = "interface-endpoints-sg"
  description = "Security group for Interface Endpoints"
  vpc_id      = var.vpc_id

  ingress_rules = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow HTTPS from everywhere"
    }
  ]

  tags = local.default_tags
}

output "ec2_sg_id" {
  value = module.ec2_sg.security_group_id
}

output "interface_endpoints_sg_id" {
  value = module.interface_endpoints_sg.security_group_id
}