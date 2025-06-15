# Pull values from Parameter Store
data "aws_ssm_parameter" "ami_id" {
  name = "/cicd/ec2/ami_id"
  depends_on = [aws_ssm_parameter.ami_id]
}

data "aws_ssm_parameter" "instance_type" {
  name = "/cicd/ec2/instance_type"
  depends_on = [ aws_ssm_parameter.instance_type ]
}

module "ec2_instances" {
  source             = "../../modules/compute/ec2"
  ami_id             = data.aws_ssm_parameter.ami_id.value
  instance_type      = data.aws_ssm_parameter.instance_type.value
  subnet_ids         = var.subnet_ids
  security_group_ids = [module.ec2_sg.security_group_id]
  iam_instance_profile = module.ssm_role.instance_profile_name
  instance_count     = 3
  name_prefix        = "cicd-ec2"
  tags = local.default_tags
}
