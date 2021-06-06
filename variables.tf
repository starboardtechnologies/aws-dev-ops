############################################################################################

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

variable "aws_codecommit_repository_sns_trigger_email_notification_name" {
  type    = string
  default = <INSERT REPOSITORY NAME>
}

############################################################################################
