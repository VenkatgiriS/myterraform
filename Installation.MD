### Installation in Mac

1. Download directly from terraform website.
Download link ```https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_darwin_amd64.zip```

2. Move Terraform to /usr/local/bin

3. Check Terraform version ```terraform version```

### Terraform Basic Commands
```
terraform init
terraform plan
terraform plan --var-file terraform.tfvars
terraform apply
terraform apply --auto-approve
terraform destroy
terraform destroy --auto-approve
terraform state list
terraform show
terraform destroy -target=aws_instance.web-1[2]
```
#### Terraform workspace
```
terraform workspace (new/select/show/list/delete/)
terraform workspace list
terraform workspace new dev
terraform workspace select default
```