output "instance_id" {
  value = aws_instance.this[*].id
}

output "instance_iam_profile" {
  value = aws_instance.this[*].iam_instance_profile
}