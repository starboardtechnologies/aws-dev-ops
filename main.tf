terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region      = var.aws_provider_region
  access_key  = var.aws_provider_access_key
  secret_key  = var.aws_provider_secret_key
}
