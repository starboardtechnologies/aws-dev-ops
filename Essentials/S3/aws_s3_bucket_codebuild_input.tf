resource "aws_s3_bucket" "aws_s3_bucket_codebuild_input" {
  count = 3  
  bucket = var.aws_s3_bucket_codebuild_input_names[count.index]
  acl    = "private"
}
