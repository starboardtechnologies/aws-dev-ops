resource "aws_sagemaker_app" "devops_aws_sagemaker_apps" {
  count              = 3
  domain_id          = var.aws_sagemaker_domain_id
  user_profile_name  = var.aws_sagemaker_user_profile_name
  app_name           = var.aws_sagemaker_app_name
  app_type           = "JupyterServer"

  tags = {
        Name = element(var.devops_aws_sagemaker_apps_tags, count.index)
    }
}
