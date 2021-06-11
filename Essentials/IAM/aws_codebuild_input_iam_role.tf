resource "aws_iam_role" "aws-s3-bucket-codebuild-input-iam-role" {
  count = 3  
  name  = var.aws_s3-bucket_codebuild_input_iam_role[count.index]

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
