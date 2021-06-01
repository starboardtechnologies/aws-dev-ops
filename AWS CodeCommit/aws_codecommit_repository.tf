resource "aws_codecommit_repository" "aws_codecommit_repository_sns_trigger_email_notification" {
  repository_name = var.aws_codecommit_repository_sns_trigger_email_notification
  description     = "AWS CodeCommit Repository with SNS Trigger(s) enabled to send email notifications when any changes are made to repository."
}

output "arn" {
  value = aws_codecommit_repository.aws_codecommit_repository_sns_trigger_email_notification
}

output "repository_id" {
  value = aws_codecommit_repository.aws_codecommit_repository_sns_trigger_email_notification
}
