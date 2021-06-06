resource "aws_iam_role" "aws-s3-bucket-codebuild-input-iam-role" {
  name = "aws-s3-bucket-codebuild-input-iam-role"

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
