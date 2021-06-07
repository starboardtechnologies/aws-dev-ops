############################################################################################

AWS PROVIDER

variable "aws_provider_region" {
  type    = string
  default = <INSERT REGION>
}

variable "aws_provider_access_key" {
  type    = string
  default = <INSERT ACCESS KEY>
}

variable "aws_provider_secret_key" {
  type    = string
  default = <INSERT SECRET KEY>
}

############################################################################################

AWS CODECOMMIT

variable "aws_codecommit_repository_sns_trigger_email_notification_name" {
  type    = string
  default = <INSERT REPOSITORY NAME>
}

############################################################################################

AWS EC2

variable "ec2_instance_ami" {
  type = string
  default = <INSERT INSTANCE AMI>
}

variable "ec2_instance_type" {
  type = string
  default = <INSERT INSTANCE TYPE>
}

variable "instance_count" {
  type = number
  default = 3
}

variable "instance_tags" {
  type = list
  default = ["dev-ec2instance", "stage-ec2instance", "prod-ec2instance"]
}

############################################################################################

AWS VPC 

variable "vpc_count" {
  type = number
  default = 3
}

variable "vpc_tags" {
  type = list
  default = ["dev-vpc", "stage-vpc", "prod-vpc"]
}


############################################################################################


