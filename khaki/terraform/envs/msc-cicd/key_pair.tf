module "key_pair" {
  source     = "../../modules/compute/key_pair"
  key_name   = "cicd-key"
  public_key = file("${path.module}/id_rsa.pub")

  tags = local.default_tags
}

output "key_name" {
  value = module.key_pair.key_name
}
