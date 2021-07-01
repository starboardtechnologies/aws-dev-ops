resource "aws_redshift_cluster" "devops_aws_redshift_clusters" {
  count               = 3  
  cluster_identifier  = var.devops_aws_redshift_cluster_identifiers[count.index]
  database_name       = var.devops_aws_redshift_cluster_database_names[count.index]
  master_username     = var.devops_aws_redshift_cluster_master_username[count.index]
  master_password     = var.devops_aws_redshift_cluster_master_password[count.index]
  node_type           = var.devops_aws_redshift_cluster_node_type[count.index]
  cluster_type        = var.devops_aws_redshift_cluster_type[count.index]

    tags = {
      Name = element(var.devops_aws_redshift_cluster_tags, count.index)
  }
}
