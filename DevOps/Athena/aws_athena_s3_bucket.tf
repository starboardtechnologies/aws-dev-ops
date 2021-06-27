resource "aws_s3_bucket" "devops_athena_database_s3_buckets" {
  count  = 3  
  bucket = var.devopsathenadatabases3buckets[count.index]

  tags = {
      Name = element(var.devops_athena_database_s3_bucket_tags, count.index)
  }
}
