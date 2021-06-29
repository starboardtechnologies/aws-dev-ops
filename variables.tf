// = reference
#  = default setting

############################################################################################

#AWS ATHENA

variable "devops_athena_database_names" {
    type = list
    default = ["<INSERT_DEV_ATHENA_DATABASE_NAME>", "<INSERT_STAGE_ATHENA_DATABASE_NAME>", "<INSERT_PROD_ATHENA_DATABASE_NAME>"]
}

variable "devopsathenadatabases3buckets" {
    type = list
    default = ["<INSERT_DEV_ATHENA_DATABASE_S3_BUCKET>", "<INSERT_STAGE_ATHENA_DATABASE_S3_BUCKET>", "<INSERT_PROD_ATHENA_DATABASE_S3_BUCKET>"]
}

variable "devops_athena_database_s3_bucket_tags" {
    type = list
    default = ["<INSERT_DEV_ATHENA_DATABASE_S3_BUCKET_TAGS>", "<INSERT_STAGE_ATHENA_DATABASE_S3_BUCKET_TAGS>", "<INSERT_PROD_ATHENA_DATABASE_S3_BUCKET_TAGS>"]
}

variable "devops_athena_databases_tags" {
    type = list
    default = ["<INSERT_DEV_ATHENA_DATABASE_TAGS>", "<INSERT_STAGE_ATHENA_DATABASE_TAGS>", "<INSERT_PROD_ATHENA_DATABASE_TAGS>"]
}

############################################################################################

#AWS BUDGET

variable "aws_budget_names" {
    type = list 
    default = ["devbudget", "stagebudget", "prodbudget"]
}

#"COST" or "USAGE"
variable "aws_budget_type" {
    type = list
    default = ["<INSERT DEV BUDGET TYPE>", "<INSERT STAGE BUDGET TYPE>", "<INSERT PROD BUDGET TYPE>"]
}

#Set Budget Amount per Cycle 
variable "aws_budget_limit_amount" {
    type = list 
    default = ["<INSERT DEV BUDGET LIMIT AMOUNT>","<INSERT STAGE BUDGET LIMIT AMOUNT>", "<INSERT PROD BUDGET LIMIT AMOUNT>",]
}

#Set Budget Limit Unit = "USD" or "GB"
variable "aws_budget_limit_unit" {
    type = list 
    default = ["<INSERT DEV BUDGET LIMIT UNIT>", "<INSERT STAGE BUDGET LIMIT UNIT>", "<INSERT PROD BUDGET LIMIT UNIT>"]
}

#Set Budget Time Period Start (i.e.: "2021-01-01_12:00")
variable "aws_budget_time_period_start" {
    type = list 
    default = ["<INSERT DEV BUDGET TIME PERIOD START>", "<INSERT STAGE BUDGET TIME PERIOD START>", "<INSERT PROD BUDGET TIME PERIOD START>"]
}

#Set Budget Time Period End (i.e.: "2022-01-01_12:00")
variable "aws_budget_time_period_end" {
    type = list 
    default = ["<INSERT DEV BUDGET TIME PERIOD END>", "<INSERT STAGE BUDGET TIME PERIOD END>", "<INSERT PROD BUDGET TIME PERIOD END>"]
}

#Set Budget Time Unit = "DAILY", "MONTHLY", "ANNUALLY", or "QUARTERLY"
variable "aws_budget_time_unit" {
    type = list 
    default = ["INSERT DEV BUDGET TIME UNIT", "INSERT STAGE BUDGET TIME UNIT", "INSERT PROD BUDGET TIME UNIT",]
}

############################################################################################

#AWS CODECOMMIT

variable "aws_codecommit_repository_sns_trigger_email_notification_name" {
  type      = string
  default   = <"INSERT REPOSITORY NAME">
}

############################################################################################

#AWS EC2

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

#AWS IAM 

variable "aws_s3-bucket_codebuild_input_iam_role" {
    type    = list
    default = ["dev-s3-bucket-codebuild-input", "stage-s3-bucket-codebuild-input", "prod-s3-bucket-codebuild-input"]
}

variable "aws_s3-bucket_codebuild_output_iam_role" {
    type    = list
    default = ["dev-s3-bucket-codebuild-output", "stage-s3-bucket-codebuild-output", "prod-s3-bucket-codebuild-output"]
}

############################################################################################

#AWS KINESIS

variable "devops_aws_kinesis_streams_names" {
    type    = list
    default = ["devkinesisstreamname", "stagekinesisstreamname", "prodkinesisstreamname"]
}

variable "devops_aws_kinesis_stream_shard_count" {
    type    = list
    default = [1, 1, 1]
}

variable "devops_aws_kinesis_stream_retention_period" {
    type    = list
    default = [48, 48, 48]
}

variable "devops_kinesis_stream_tags" {
    type    = list
    default = ["devkinesisstream", "stagekinesisstream", "prodkinesisstream"]
}

variable "devops_kinesis_stream_consumer_names" {
    type    = list
    default = ["devkinesisstreamconsumer", "stagekinesisstreamconsumer", "prodkinesisstreamconsumer"]
}

variable "devops_kinesis_stream_consumer_stream_arns" {
    type    = list
    default = ["", "", ""]
}

############################################################################################

#AWS PROVIDER

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

#AWS S3

variable "aws_s3_bucket_codebuild_input_names" {
    type    = list
    default = ["devcodebuildinput", "stagecodebuildinput", "prodcodebuildinput"]
}

variable "aws_s3_bucket_codebuild_output_names" {
    type    = list
    default = ["devcodebuildoutput", "stagecodebuildoutput", "prodcodebuildoutput"]
}

variable "s3_bucket_static_website_hosting_name" {
  type = list
  default = ["devstaticwebsites3bucket","stagestaticwebsites3bucket","prodstaticwebsites3bucket"]
}

variable "s3_bucket_static_website_hosting_acl" {
  type = list
  default = ["private", "private", "public-read"]
}

variable "s3_bucket_static_website_hosting_tags" {
  type = list
  default = ["devstaticwebsites3bucket","stagestaticwebsites3bucket","prodstaticwebsites3bucket"]
}

variable "s3_bucket_static_website_hosting_versioning" {
  type = list
  default = ["true", "true", "true"]

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

variable "vpc_id" {
  type    = list 
  default = [<INSERT DEV VPC ID>, <INSERT STAGE VPC ID>, <INSERT PROD VPC ID>]
}

variable "vpc_subnet_tags" {
  type    = list
  default = ["devsubnet","stagesubnet","prodsubnet",]
}

variable "vpc_cidr_blocks" {
    type    = list
    default = ["10.0.0.0/24", "10.0.2.0/24", "10.0.1.0/24"]
}

############################################################################################
