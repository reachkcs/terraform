output "vpc_id" {
  value = module.networking.vpc_id
}

output "public_subnet_ids" {
  value = module.networking.public_subnet_ids
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_certificate_authority" {
  value = module.eks.cluster_certificate_authority
}

output "node_group_name" {
  value = module.eks.node_group_name
}

output "jenkins_public_ip" {
  description = "The public IP of the Jenkins EC2 instance."
  value       = aws_instance.jenkins_instance.public_ip
}

output "jenkins_url" {
  description = "The URL to access Jenkins."
  value       = "http://${aws_instance.jenkins_instance.public_ip}:8080"
}

