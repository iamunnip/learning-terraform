cidr_block           = "10.1.0.0/16"
instance_tenancy     = "default"
enable_dns_hostnames = "true"
enable_dns_support   = "true"
tags = {
  "Name"        = "dev"
  "Environment" = "dev"
}
public_cidr_blocks  = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
private_cidr_blocks = ["10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24"]
availability_zones  = ["us-east-1a", "us-east-1b", "us-east-1c"]
