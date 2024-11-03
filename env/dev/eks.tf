module "eks" {
    source = "../../modules/eks"

    #Env specific vars
    region = var.region
    cluster_name = var.cluster_name
    node_instance_type = var.node_instance_type
    public_subnet_ids = var.public_subnet_ids
    vpc_id = var.vpc_id
//    env = var.env
//    vpc_cidr = var.vpc_cidr
//    azs = var.azs
}

