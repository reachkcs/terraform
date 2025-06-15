output "instance_profile_name" {
  value = aws_iam_instance_profile.ssm_instance_profile.name
}

output "role_name" {
  value = aws_iam_role.ssm_ec2_role.name
}
