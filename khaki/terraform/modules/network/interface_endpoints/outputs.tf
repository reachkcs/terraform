output "endpoint_ids" {
  value = { for svc, ep in aws_vpc_endpoint.this : svc => ep.id }
}

output "dns_entries" {
  value = { for svc, ep in aws_vpc_endpoint.this : svc => ep.dns_entry }
}

output "region_used" {
  value = data.aws_region.current.name
}