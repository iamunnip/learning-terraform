Learning HashiCorp Terraform

Basic Commands

```
$ terraform -version

$ terraform -help

$ terraform init

$ terraform fmt

$ terraform validate

$ terraform plan

$ terraform apply

$ terraform destroy
```

Provider Location

```
.terraform
└── providers
    └── registry.terraform.io
        └── hashicorp
            └── random
                └── 3.6.1
                    └── linux_amd64
                        └── terraform-provider-random_v3.6.1_x5
```

State File

```
terraform.tfstate
```

Lock File

```
.terraform.lock.hcl
```