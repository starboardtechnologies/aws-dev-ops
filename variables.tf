############################################################################################

AWS IAM 

variable "aws_s3-bucket_codebuild_input_iam_role" {
    type    = list
    default = ["dev-s3-bucket-codebuild-input", "stage-s3-bucket-codebuild-input", "prod-s3-bucket-codebuild-input"]
}

variable "aws_s3-bucket_codebuild_output_iam_role" {
    type    = list
    default = ["dev-s3-bucket-codebuild-output", "stage-s3-bucket-codebuild-output", "prod-s3-bucket-codebuild-output"]
}

############################################################################################

AWS PROVIDER

variable "aws_provider_region" {
  type      = string
  default   = <"INSERT REGION">
}

variable "aws_provider_access_key" {
  type      = string
  default   = <"INSERT ACCESS KEY">
}

variable "aws_provider_secret_key" {
  type      = string
  default   = <"INSERT SECRET KEY">
}

############################################################################################

AWS CODECOMMIT

variable "aws_codecommit_repository_sns_trigger_email_notification_name" {
  type      = string
  default   = <"INSERT REPOSITORY NAME">
}

############################################################################################

AWS EC2

variable "ec2_instance_ami" {
  type      = string
  default   = <"INSERT INSTANCE AMI">
}

variable "ec2_instance_availability_zone" {
    type    = string
    default = <"INSERT INSTANCE AVAILABILITY ZONE">
}

variable "ec2_instance_type" {
  type      = string
  default   = <"INSERT INSTANCE TYPE">
}

variable "ec2_instance_count" {
  type      = number
  default   = 3
}

variable "ec2_instance_tags" {
  type      = list
  default   = ["<INSERT DEV INSTANCE NAME>", "<INSERT STAGE INSTANCE NAME>", "<INSERT PROD INSTANCE NAME>"]
}

variable "ec2_instance_monitoring" {
    type    = bool
    default = true
}

variable "ec2_instance_placement_group" {
    type    = string 
    default = <INSERT INSTANCE PlACEMENT GROUP NAME>
}

############################################################################################

#AWS S3

variable "aws_s3_bucket_codebuild_input_names" {
    type    = list
    default = ["devcodebuildinput", "stagecodebuildinput", "prodcodebuildinput"]
}

variable "aws_s3_bucket_codebuild_output_names" {
    type    = list
    default = ["devcodebuildoutput", "stagecodebuildoutput", "prodcodebuildoutput"]
}

############################################################################################

#AWS VPC 

variable "vpc_count" {
  type     = number
  default  = 3
}

variable "vpc_tags" {
  type    = list
  default = [<"INSERT DEV VPC NAME">, <"INSERT STAGE VPC NAME">, <"INSERT PROD VPC NAME">]
}

############################################################################################


