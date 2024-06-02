provider "aws" {
  region                   = local.region
  shared_config_files      = [local.shared_config_files]
  shared_credentials_files = [local.shared_credentials_files]
  profile                  = local.profile
}
