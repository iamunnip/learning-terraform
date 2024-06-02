module "vpc" {
  source               = "../../../modules/vpc"
  cidr_block           = var.cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  tags                 = var.tags
}

module "internet_gateway" {
  source     = "../../../modules/internet_gateway"
  vpc_id     = module.vpc.vpc_id
  tags       = var.tags
  depends_on = [module.vpc]
}
