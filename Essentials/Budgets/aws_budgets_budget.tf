resource "aws_budgets_budget" "aws-resource-budget" {
  count             = 3  
  name              = var.aws_budget_names[count.index]
  budget_type       = var.aws_budget_type[count.index]
  limit_amount      = var.aws_budget_limit_amount[count.index]
  limit_unit        = var.aws_budget_limit_unit[count.index]
  time_period_end   = var.aws_budget_time_period_end[count.index]
  time_period_start = var.aws_budget_time_period_start[count.index]
  time_unit         = var.aws_budget_time_unit[count.index]
}
