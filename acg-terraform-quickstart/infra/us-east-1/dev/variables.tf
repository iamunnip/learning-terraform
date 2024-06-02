variable "cidr_block" {
  type = string
}

variable "instance_tenancy" {
  type = string
}

variable "enable_dns_hostnames" {
  type = string
}

variable "enable_dns_support" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "public_cidr_blocks" {
  type = list(string)
}

variable "private_cidr_blocks" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}
