resource "aws_iam_role" "devops_kinesis_firehose_s3_buckets_iam_roles" {
    count   = 3
    name    = var.devops_kinesis_firehose_s3_buckets_iam_roles_name[count.index]

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
