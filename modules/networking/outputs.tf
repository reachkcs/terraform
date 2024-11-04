
output "vpc_id" {
    value = aws_vpc.myvpc.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}
