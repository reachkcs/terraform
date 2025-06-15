resource "aws_ssm_parameter" "ami_id" {
  name  = "/cicd/ec2/ami_id"
  type  = "String"
  value = "ami-09e6f87a47903347c" # <- Replace with actual AMI ID
}

resource "aws_ssm_parameter" "instance_type" {
  name  = "/cicd/ec2/instance_type"
  type  = "String"
  value = "t3.micro"
}

resource "aws_ssm_parameter" "subnet_ids" {
  name  = "/cicd/ec2/subnet_ids"
  type  = "String"
  value = "subnet-abc123,subnet-def456,subnet-ghi789" # <- Replace with actual subnet IDs
}

resource "aws_ssm_parameter" "security_group_ids" {
  name  = "/cicd/ec2/security_group_ids"
  type  = "String"
  value = "sg-123abc456def" # <- Replace with actual SG IDs
}
