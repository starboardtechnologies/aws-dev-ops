resource "aws_s3_bucket" "aws_s3_bucket_codebuild_output" {
  bucket = var.aws_s3_bucket_codebuild_output_name
  acl    = "private"
}
