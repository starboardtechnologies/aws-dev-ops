resource "aws_s3_bucket" "devops_kinesis_firehose_s3_buckets" {
  count  = 3
  bucket = var.devops_kinesis_firehose_s3_buckets[count.index]
  acl    = "private"

  tags = {
         Name = element(var.devops_kinesis_firehose_s3_bucket_tags, count.index)
     }
}
