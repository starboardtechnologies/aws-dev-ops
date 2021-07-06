# Instructions

## Download Terraform (https://www.terraform.io/downloads.html)

### Option A: Place all resources into one single main.tf file

### Take what resources you need and place those resources in your main.tf file
### Take the affiliated resource variables and place those in your variable.tf file

### Option B: Place individual resource files along with your variable.tf file into a single folder 
### Option B allows you to add or remove resources in isolation much easier as opposed to deploying infrastructure from a single file

### Package your resource files and variable files into a folder on your laptop or computer where you will be deploying your infrastructure configuration

### From your Text Editor (Visual Studio Code, Atom, SublimeText), 'cd' into your terraform folder where you've placed your resources and variables
### After positioning into your terraform folder, run the following commands:

### 1.) terraform init
### 2.) terraform plan
### 3.) terraform apply
### 4.) terraform show

### Run terraform destroy (if needed)

#### Resources are currently configured to support three stages (Dev, Stage or Test, and Production Environments)
#### You can change the amount of resources you would like to have deployed by changing the "count" value located in any of the provided resource files.
