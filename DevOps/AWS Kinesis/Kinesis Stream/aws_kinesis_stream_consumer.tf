resource "aws_kinesis_stream_consumer" "devops_kinesis_stream_consumer" {
  count      = 3  
  name       = var.devops_kinesis_stream_consumer_names[count.index]
  stream_arn = var.devops_kinesis_stream_consumer_stream_arns[count.index]
}
