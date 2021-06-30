resource "aws_kinesis_firehose_delivery_stream" "devops_kinesis_firehose_delivery_streams" {
    count       = 3
    name        = var.devops_kinesis_firehose_delivery_streams_names[count.index]
    destination = "s3"

  s3_configuration {
    role_arn    = var.devops_kinesis_firehose_delivery_streams_s3_configuration_role_arn[count.index]
    bucket_arn  = var.devops_kinesis_firehose_delivery_streams_s3_configuration_bucket_arn[count.index]
  }
}
