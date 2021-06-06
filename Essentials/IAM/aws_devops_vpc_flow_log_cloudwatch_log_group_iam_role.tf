resource "aws_iam_role" "aws-devops-vpc-flow-log-cloudwatch-log-group-iam-role" {
  name = "aws-devops-vpc-flow-log-cloudwatch-log-group-iam-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
