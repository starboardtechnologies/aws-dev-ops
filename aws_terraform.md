# Instructions

## Download Terraform (https://www.terraform.io/downloads.html)

### Take what resources you need and place those resources in your main.tf file
### Take the affiliated resource variables and place those in your variable.tf file

### Package your resource files and variable files into a folder on your laptop or computer where you will be deploying your infrastructure configuration

### From your Text Editor (Visual Studio Code, Atom, SublimeText), 'cd' into your terraform folder where you've placed your resources and variables
### After positioning into your terraform folder, run the following commands:

### terraform init
### terraform plan
### terraform apply
### terraform show

### Run terraform destroy (if needed)

#### Resources are currently configured to support three stages (Dev, Stage or Test, and Production Environments)
#### You can change the amount of resources you would like to have deployed by changing the "count" value located in any of the provided resource files.