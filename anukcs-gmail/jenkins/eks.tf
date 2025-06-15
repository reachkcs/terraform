module "eks" {
  source = "../../modules/eks"

  #Env specific vars
  region             = var.region
  cluster_name       = var.cluster_name
  node_instance_type = var.node_instance_type
  public_subnet_ids  = module.networking.public_subnet_ids
  vpc_id             = module.networking.vpc_id
}
