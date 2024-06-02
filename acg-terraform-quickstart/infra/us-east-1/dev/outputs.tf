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
