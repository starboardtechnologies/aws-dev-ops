resource "aws_autoscaling_group" "devops_autoscaling_groups" {
  count                     = 3  
  name                      = var.devops_autoscaling_group_names[count.index]
  max_size                  = var.devops_autoscaling_groups_max_size[count.index]
  min_size                  = var.devops_autoscaling_groups_min_size[count.index]
  health_check_grace_period = var.devops_autoscaling_group_health_check_grace_period[count.index]
  health_check_type         = var.devops_autoscaling_group_health_check_type[count.index]
  desired_capacity          = var.devops_autoscaling_group_desired_capacity[count.index]
  force_delete              = var.devops_autoscaling_group_force_delete[count.index]
  placement_group           = var.devops_ec2_placement_group_names[count.index]
  launch_configuration       = var.devops_launch_configuration_names[count.index]
  vpc_zone_identifier        = var.vpc_zone_identifers


  tag {
    key                 = "foo"
    value               = "bar"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }

  tag {
    key                 = "lorem"
    value               = "ipsum"
    propagate_at_launch = false
  }
}
