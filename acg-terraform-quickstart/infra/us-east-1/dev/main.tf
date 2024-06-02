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

module "subnet" {
  source              = "../../../modules/subnet"
  vpc_id              = module.vpc.vpc_id
  public_cidr_blocks  = var.public_cidr_blocks
  private_cidr_blocks = var.private_cidr_blocks
  availability_zones  = var.availability_zones
  tags                = var.tags
  depends_on          = [module.vpc]
}
