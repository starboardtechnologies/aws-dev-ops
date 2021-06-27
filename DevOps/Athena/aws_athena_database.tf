resource "aws_athena_database" "devops_athena-databases" {
  count  = 3  
  name   = var.devops_athena_database_names[count.index]
  bucket = var.devopsathenadatabases3buckets[count.index]
}
