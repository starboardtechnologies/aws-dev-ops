##########################################################################################

AWS CODEBUILD

output "aws-codebuild-input-arn" {
    value = aws_s3_bucket.aws_s3_bucket_codebuild_input
}

output "aws-codebuild-input-s3-bucket-id" {
    value = aws_s3_bucket.aws_s3_bucket_codebuild_input
}

output "aws-s3-bucket-codebuild-input-iam-role-arn" {
  value = aws_iam_role.aws-s3-bucket-codebuild-input-iam-role
}

##########################################################################################

AWS CODECOMMIT

output "aws-codecommit-repository-arn" {
  value = aws_codecommit_repository.aws_codecommit_repository_sns_trigger_email_notification
}

output "aws-codecommit-repository-id" {
  value = aws_codecommit_repository.aws_codecommit_repository_sns_trigger_email_notification
}

##########################################################################################
