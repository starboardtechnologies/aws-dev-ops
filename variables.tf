#AWS RESOURCE VARIABLES

// = reference
#  = default setting

#############################################################################################

##AWS ATHENA

variable "devops_athena_database_names" {
    type      = list
    default   = ["<INSERT_DEV_ATHENA_DATABASE_NAME>", "<INSERT_STAGE_ATHENA_DATABASE_NAME>", "<INSERT_PROD_ATHENA_DATABASE_NAME>"]
}

variable "devopsathenadatabases3buckets" {
    type      = list
    default   = ["<INSERT_DEV_ATHENA_DATABASE_S3_BUCKET>", "<INSERT_STAGE_ATHENA_DATABASE_S3_BUCKET>", "<INSERT_PROD_ATHENA_DATABASE_S3_BUCKET>"]
}

variable "devops_athena_database_s3_bucket_tags" {
    type      = list
    default   = ["<INSERT_DEV_ATHENA_DATABASE_S3_BUCKET_TAGS>", "<INSERT_STAGE_ATHENA_DATABASE_S3_BUCKET_TAGS>", "<INSERT_PROD_ATHENA_DATABASE_S3_BUCKET_TAGS>"]
}

variable "devops_athena_databases_tags" {
    type      = list
    default   = ["<INSERT_DEV_ATHENA_DATABASE_TAGS>", "<INSERT_STAGE_ATHENA_DATABASE_TAGS>", "<INSERT_PROD_ATHENA_DATABASE_TAGS>"]
}

#############################################################################################

##AWS AUTOSCALING

variable "devops_autoscaling_group_names" {
    type = list
    default = ["<INSERT_DEV_AUTOSCALING_GROUP_NAME>", "<INSERT_STAGE_AUTOSCALING_GROUP_NAME>", "<INSERT_PROD_AUTOSCALING_GROUP_NAME>",]
}

variable "vpc_zone_identifers" {
    type = list
    default = ["<INSERT_DEV_SUBNET_ID>", "<INSERT_STAGE_SUBNET_ID>", "<INSERT_PROD_SUBNET_ID>"]
}

variable "devops_autoscaling_groups_max_size" {
    type = list
    default = ["<INSERT_DEV_AUTOSCALING_GROUP_MAX_SIZE>", "<INSERT_STAGE_AUTOSCALING_GROUP_MAX_SIZE>", "<INSERT_PROD_AUTOSCALING_GROUP_MAX_SIZE>"]
}

variable "devops_autoscaling_groups_min_size" {
    type = list
    default = ["<INSERT_DEV_AUTOSCALING_GROUP_MIN_SIZE>", "<INSERT_STAGE_AUTOSCALING_GROUP_MIN_SIZE>", "<INSERT_PROD_AUTOSCALING_GROUP_MIN_SIZE>"]
}

# (Optional, Default: 300) Time (in seconds) after instance comes into service before checking health.
variable "devops_autoscaling_group_health_check_grace_period" {
    type = list
    default = ["<INSERT_DEV_AUTOSCALING_GROUP_HEALTH_CHECK_PERIOD>", "<INSERT_STAGE_AUTOSCALING_GROUP_HEALTH_CHECK_PERIOD>", "<INSERT_PROD_AUTOSCALING_GROUP_HEALTH_CHECK_PERIOD>"]
}

#"ELB" or "EC2"
variable "devops_autoscaling_group_health_check_type" {
    type = list
    default = ["<INSERT_DEV_AUTOSCALING_GROUP_HEALTH_CHECK_TYPE>", "<INSERT_STAGE_AUTOSCALING_GROUP_HEALTH_CHECK_TYPE>", "<INSERT_PROD_AUTOSCALING_GROUP_HEALTH_CHECK_TYPE>"]
}

variable "devops_autoscaling_group_desired_capacity" {
    type = list
    default = ["<INSERT_DEV_AUTOSCALING_GROUP_DESIRED_CAPACITY", "<INSERT_STAGE_AUTOSCALING_GROUP_DESIRED_CAPACITY", "<INSERT_PROD_AUTOSCALING_GROUP_DESIRED_CAPACITY",]
}

#default = true
variable "devops_autoscaling_group_force_delete" {
    type = list
    default = ["<INSERT_DEV_AUTOSCALING_GROUP_FORCE_DELETE", "<INSERT_STAGE_AUTOSCALING_GROUP_FORCE_DELETE", "<INSERT_PROD_AUTOSCALING_GROUP_FORCE_DELETE",]
}

variable "devops_autoscaling_group_key_tag" {
    type = list
    default = ["department", "department", "department",]
} 

variable "devops_autoscaling_group_value_tag" {
    type = list
    default = ["development", "staging", "production"]
}

############################################################################################

#AWS BUDGET

variable "aws_budget_names" {
    type      = list 
    default   = ["devbudget", "stagebudget", "prodbudget"]
}

#"COST" or "USAGE"
variable "aws_budget_type" {
    type      = list
    default   = ["<INSERT DEV BUDGET TYPE>", "<INSERT STAGE BUDGET TYPE>", "<INSERT PROD BUDGET TYPE>"]
}

#Set Budget Amount per Cycle 
variable "aws_budget_limit_amount" {
    type      = list 
    default   = ["<INSERT DEV BUDGET LIMIT AMOUNT>","<INSERT STAGE BUDGET LIMIT AMOUNT>", "<INSERT PROD BUDGET LIMIT AMOUNT>",]
}

#Set Budget Limit Unit = "USD" or "GB"
variable "aws_budget_limit_unit" {
    type      = list 
    default   = ["<INSERT DEV BUDGET LIMIT UNIT>", "<INSERT STAGE BUDGET LIMIT UNIT>", "<INSERT PROD BUDGET LIMIT UNIT>"]
}

#Set Budget Time Period Start (i.e.: "2021-01-01_12:00")
variable "aws_budget_time_period_start" {
    type      = list 
    default   = ["<INSERT DEV BUDGET TIME PERIOD START>", "<INSERT STAGE BUDGET TIME PERIOD START>", "<INSERT PROD BUDGET TIME PERIOD START>"]
}

#Set Budget Time Period End (i.e.: "2022-01-01_12:00")
variable "aws_budget_time_period_end" {
    type      = list 
    default   = ["<INSERT DEV BUDGET TIME PERIOD END>", "<INSERT STAGE BUDGET TIME PERIOD END>", "<INSERT PROD BUDGET TIME PERIOD END>"]
}

#Set Budget Time Unit = "DAILY", "MONTHLY", "ANNUALLY", or "QUARTERLY"
variable "aws_budget_time_unit" {
    type      = list 
    default   = ["INSERT DEV BUDGET TIME UNIT", "INSERT STAGE BUDGET TIME UNIT", "INSERT PROD BUDGET TIME UNIT",]
}

############################################################################################

#AWS CODECOMMIT

variable "aws_codecommit_repository_sns_trigger_email_notification_name" {
  type       = string
  default    = <"INSERT REPOSITORY NAME">
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
    default = [<INSERT_DEV_KINESIS_STREAM_NAME>, <INSERT_STAGE_KINESIS_STREAM_NAME>, <INSERT_PROD_KINESIS_STREAM_NAME>]
}

variable "devops_aws_kinesis_stream_shard_count" {
    type    = list
    default = [<INSERT_DEV_KINESIS_STREAM_SHARD_COUNT>, <INSERT_STAGE_KINESIS_STREAM_SHARD_COUNT>, <INSERT_PROD_KINESIS_STREAM_SHARD_COUNT>]
}

variable "devops_aws_kinesis_stream_retention_period" {
    type    = list
    default = [<INSERT_DEV_KINESIS_STREAM_RETENTION_PERIOD>, <INSERT_STAGE_KINESIS_STREAM_RETENTION_PERIOD>, <INSERT_PROD_KINESIS_STREAM_RETENTION_PERIOD>]
}

variable "devops_kinesis_stream_tags" {
    type    = list
    default = ["devkinesisstream", "stagekinesisstream", "prodkinesisstream"]
}

variable "devops_kinesis_stream_consumer_names" {
    type    = list
    default = [<INSERT_DEV_KINESIS_STREAM_CONSUMER_NAME>, <INSERT_STAGE_KINESIS_STREAM_CONSUMER_NAME>, <INSERT_PROD_KINESIS_STREAM_CONSUMER_NAME>]
}

variable "devops_kinesis_stream_consumer_stream_arns" {
    type    = list
    default = [<INSERT_DEV_KINESIS_STREAM_CONSUMER_STREAM_ARN>, , <INSERT_STAGE_KINESIS_STREAM_CONSUMER_STREAM_ARN>, <INSERT_PROD_KINESIS_STREAM_CONSUMER_STREAM_ARN>]
}

############################################################################################

#AWS KINESIS FIREHOSE

variable "devops_kinesis_firehose_delivery_streams_names" {
    type = list
    default = ["<INSERT_DEV_KINESIS_FIREHOSE_DELIVERY_STREAM_NAME>", "<INSERT_STAGE_KINESIS_FIREHOSE_DELIVERY_STREAM_NAME>", "<INSERT_PROD_KINESIS_FIREHOSE_DELIVERY_STREAM_NAME>"]
}

variable "devops_kinesis_firehose_s3_buckets_iam_roles_name" {
    type    = list
    default = ["<INSERT_DEV_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_IAM_ROLE_NAME>", "<INSERT_STAGE_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_IAM_ROLE_NAME>", "<INSERT_PROD_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_IAM_ROLE_NAME>"] 
}

variable "devops_kinesis_firehose_delivery_streams_s3_configuration_role_arn" {
    type    = list
    default = ["<INSERT_DEV_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_IAM_ROLE_ARN>", "<INSERT_STAGE_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_IAM_ROLE_ARN>", "<INSERT_PROD_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_IAM_ROLE_ARN>"] 
}

variable "devops_kinesis_firehose_delivery_streams_s3_configuration_bucket_arn" {
    type    = list
    default = ["<INSERT_DEV_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_ARN>", "<INSERT_STAGE_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_ARN>", "<INSERT_PROD_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_ARN>"]
}

variable "devops_kinesis_firehose_s3_buckets" {
    type    = list
    default = ["<INSERT_DEV_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_NAME>", "<INSERT_STAGE_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_NAME>", "<INSERT_PROD_KINESIS_FIREHOSE_DELIVERY_STREAM_S3_BUCKET_NAME>"]
}

variable "devops_kinesis_firehose_s3_bucket_tags" {
    type = list
    default = ["devkinesisfirehoses3bucket", "stagekinesisfirehoses3bucket", "prodkinesisfirehoses3bucket"]
}

############################################################################################

#AWS LAUNCH CONFIGURATION

variable "devops_launch_configuration_names" {
    type = list
    default = ["<INSERT_DEV_LAUNCH_CONFIGURATION_NAME>", "<INSERT_STAGE_LAUNCH_CONFIGURATION_NAME>", "<INSERT_PROD_LAUNCH_CONFIGURATION_NAME>",]
}

variable "devops_launch_configuration_instance_type" {
    type = list
    default = ["<INSERT_DEV_LAUNCH_CONFIGURATION_INSTANCE_TYPE>", "<INSERT_STAGE_LAUNCH_CONFIGURATION_INSTANCE_TYPE>", "<INSERT_PROD_LAUNCH_CONFIGURATION_INSTANCE_TYPE>"]
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

#AWS REDSHIFT

variable "devops_aws_redshift_cluster_identifiers" {
    type = list
    default = ["<INSERT_DEV_REDSHIFT_CLUSTER_IDENTIFIER>", "<INSERT_STAGE_REDSHIFT_CLUSTER_IDENTIFIER>", "<INSERT_PROD_REDSHIFT_CLUSTER_IDENTIFIER>"]
}

variable "devops_aws_redshift_cluster_database_names" {
    type = list
    default = ["<INSERT_DEV_REDSHIFT_CLUSTER_DATABASE_NAME>", "<INSERT_STAGE_REDSHIFT_CLUSTER_DATABASE_NAME>", "<INSERT_PROD_REDSHIFT_CLUSTER_DATABASE_NAME>"]
}

variable "devops_aws_redshift_cluster_master_username" {
    type = list
    default = ["<INSERT_DEV_REDSHIFT_CLUSTER_MASTER_USERNAME", "<INSERT_STAGE_REDSHIFT_CLUSTER_MASTER_USERNAME", "<INSERT_PROD_REDSHIFT_CLUSTER_MASTER_USERNAME"]
}

variable "devops_aws_redshift_cluster_master_password" {
    type = list
    default = ["<INSERT_DEV_REDSHIFT_CLUSTER_MASTER_PASSWORD", "<INSERT_STAGE_REDSHIFT_CLUSTER_MASTER_PASSWORD", "<INSERT_PROD_REDSHIFT_CLUSTER_MASTER_PASSWORD"]
}

variable "devops_aws_redshift_cluster_node_type" {
    type = list
    default = ["<INSERT_DEV_REDSHIFT_CLUSTER_NODE_TYPE", "<INSERT_STAGE_REDSHIFT_CLUSTER_NODE_TYPE", "<INSERT_PROD_REDSHIFT_CLUSTER_NODE_TYPE"]
}

variable "devops_aws_redshift_cluster_type" {
    type = list
    default = ["<INSERT_DEV_REDSHIFT_CLUSTER_TYPE", "<INSERT_STAGE_REDSHIFT_CLUSTER_TYPE", "<INSERT_PROD_REDSHIFT_CLUSTER_TYPE"]
}

variable "devops_aws_redshift_cluster_tags" {
    type = list
    default = ["devredshiftcluster", "stageredshiftcluster", "prodredshiftcluster"]
}

############################################################################################

#AWS S3

variable "aws_s3_bucket_codebuild_input_names" {
  type     = list
  default  = ["devcodebuildinput", "stagecodebuildinput", "prodcodebuildinput"]
}

variable "aws_s3_bucket_codebuild_output_names" {
  type     = list
  default  = ["devcodebuildoutput", "stagecodebuildoutput", "prodcodebuildoutput"]
}

variable "s3_bucket_static_website_hosting_name" {
  type     = list
  default  = ["devstaticwebsites3bucket","stagestaticwebsites3bucket","prodstaticwebsites3bucket"]
}

variable "s3_bucket_static_website_hosting_acl" {
  type     = list
  default  = ["private", "private", "public-read"]
}

variable "s3_bucket_static_website_hosting_tags" {
  type     = list
  default  = ["devstaticwebsites3bucket","stagestaticwebsites3bucket","prodstaticwebsites3bucket"]
}

variable "s3_bucket_static_website_hosting_versioning" {
  type     = list
  default  = ["true", "true", "true"]

############################################################################################
    
#AWS SAGEMAKER
    
variable "aws_sagemaker_domain_id" {
    type = list
    default = [<INSERT_DEV_AWS_SAGEMAKER_DOMAIN_ID>, <INSERT_STAGE_AWS_SAGEMAKER_DOMAIN_ID>, <INSERT_PROD_AWS_SAGEMAKER_DOMAIN_ID>]
  }
  
variable "aws_sagemaker_user_profile_name" {
    type = list
    default = [<INSERT_DEV_AWS_SAGEMAKER_USER_PROFILE_NAME>, <INSERT_STAGE_AWS_SAGEMAKER_USER_PROFILE_NAME>, <INSERT_PROD_AWS_SAGEMAKER_USER_PROFILE_NAME>]
  }

variable "aws_sagemaker_app_name" {
    type = list
    default = [<INSERT_DEV_AWS_SAGEMAKER_APP_NAME>, <INSERT_STAGE_AWS_SAGEMAKER_APP_NAME>, <INSERT_PROD_AWS_SAGEMAKER_APP_NAME>]
  }   
    
    
############################################################################################

#AWS VPC 

variable "vpc_count" {
  type     = number
  default  = 3
}

variable "vpc_tags" {
  type      = list
  default   = [<"INSERT DEV VPC NAME">, <"INSERT STAGE VPC NAME">, <"INSERT PROD VPC NAME">]
}

variable "vpc_id" {
  type      = list 
  default   = [<"INSERT DEV VPC ID">, <"INSERT STAGE VPC ID">, <"INSERT PROD VPC ID">]
}

variable "vpc_subnet_tags" {
  type      = list
  default   = ["devsubnet","stagesubnet","prodsubnet",]
}

variable "vpc_cidr_blocks" {
    type    = list
    default = ["10.0.0.0/24", "10.0.2.0/24", "10.0.1.0/24"]
}

############################################################################################
