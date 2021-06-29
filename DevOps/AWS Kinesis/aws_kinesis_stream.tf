resource "aws_kinesis_stream" "devops_aws_kinesis_streams" {
  count            = 3  
  name             = var.devops_aws_kinesis_streams_names[count.index]
  shard_count      = var.devops_aws_kinesis_stream_shard_count[count.index]
  retention_period = var.devops_aws_kinesis_stream_retention_period[count.index]

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

    tags = {
        Name = element(var.devops_kinesis_stream_tags, count.index)
    }
}
