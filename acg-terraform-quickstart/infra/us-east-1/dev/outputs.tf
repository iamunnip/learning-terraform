output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_arn" {
  value = module.vpc.vpc_arn
}

output "internet_gateway_id" {
  value = module.internet_gateway.internet_gateway_id
}

output "internet_gateway_arn" {
  value = module.internet_gateway.internet_gateway_arn
}

output "public_subnet_ids" {
  value = module.subnet.public_subnet_ids
}

output "public_subnet_arns" {
  value = module.subnet.public_subnet_arns
}

output "private_subnet_ids" {
  value = module.subnet.private_subnet_ids
}

output "private_subnet_arns" {
  value = module.subnet.private_subnet_arns
}
