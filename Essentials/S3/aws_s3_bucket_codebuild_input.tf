resource "aws_s3_bucket" "aws_s3_bucket_codebuild_input" {
  bucket = var.aws_s3_bucket_codebuild_input_name
  acl    = "private"
}
