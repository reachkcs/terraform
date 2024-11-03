module "eks" {
    source = "../../modules/eks"

    #Env specific vars
    env = var.env
    vpc_cidr = var.vpc_cidr
    azs = var.azs
}

