terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.64.0"
    }
  }
  required_version = "1.9.5"
}

provider "aws" {
  region = "us-east-1"
}

# Actively managed by Terrafom
resource "aws_s3_bucket" "dev_s3_bucket" {
  bucket = "dev-s3-bucket"
}

# External resource managed somewhere else
data "aws_s3_bucket" "external_s3_bucket" {
  bucket = "external-s3-bucket"
}

variable "bucket_name" {
  type = string
  description = "Variable for S3 bucket"
  default = "qa-s3-bucket"
}

output "bucket_id" {
  value = aws_s3_bucket.dev_s3_bucket.id
}

locals {
  local_example = "This is a local variable"
}

module "my_module" {
  source = "./module-example"
}
