module "ssm_role" {
  source                = "../../modules/iam/ssm_ec2_role"
  role_name             = "ec2-ssm-role"
  instance_profile_name = "ec2-ssm-instance-profile"

  tags = local.default_tags
}

output "instance_profile_name" {
  value = module.ssm_role.instance_profile_name
}