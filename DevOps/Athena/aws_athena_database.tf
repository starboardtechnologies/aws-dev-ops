resource "aws_athena_database" "devops_athena-databases" {
  count  = 3  
  name   = var.devops_athena_database_names[count.index]
  bucket = var.devops_athena_database_s3_buckets[count.index]
}
