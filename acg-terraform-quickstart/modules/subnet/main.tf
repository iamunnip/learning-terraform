resource "aws_subnet" "public_subnet" {
  count                   = length(var.availability_zones)
  vpc_id                  = var.vpc_id
  cidr_block              = element(var.public_cidr_blocks, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags                    = var.tags
}

resource "aws_subnet" "private_subnet" {
  count                   = length(var.availability_zones)
  vpc_id                  = var.vpc_id
  cidr_block              = element(var.private_cidr_blocks, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = false
  tags                    = var.tags
}
