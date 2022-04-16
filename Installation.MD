### Installation in Mac

1. Download directly from terraform website. For Mac
Download link ```https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_darwin_amd64.zip```  

   Download Link for Linux ```https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_linux_amd64.zip ```

2. Move Terraform to /usr/local/bin

3. Check Terraform version ```terraform version```

### Terraform Basic Commands
```
terraform init
terraform init -backend-config=backend.json
terraform validate
terraform fmt
terraform plan
terraform plan --var-file terraform.tfvars
terraform apply
terraform apply --auto-approve
terraform destroy
terraform destroy --auto-approve
terraform state list
terraform state rm aws_instance.web-1[0] 
terraform show
terraform destroy -target=aws_instance.web-1[2]
terraform import aws_instance.web-10 i-05c999ebf68454f37
terraform taint aws_instance.web-10
terraform untaint aws_instance.web-10
```

#### Terraform workspace
```
terraform workspace (new/select/show/list/delete/)
terraform workspace list
terraform workspace new dev
terraform workspace select default

```
#### Terraform Logging
```
  export TF_LOG=TRACE
  export TF_LOG_PATH="terraform.txt"
  unset TF_LOG
```