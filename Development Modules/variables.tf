variable "aws_budget_names" {
    type = list 
    default = ["devbudget", "stagebudget", "prodbudget"]
}

variable "aws_budget_type" {
    type = list
    default = ["COST","COST","COST"]
}

variable "aws_budget_limit_amount" {
    type = list 
    default = ["1000","1000","1000",]
}

variable "aws_budget_limit_unit" {
    type = list 
    default = ["USD","USD","USD"]
}

variable "aws_budget_time_period_end" {
    type = list 
    default = ["2022-06-06_12:00","2022-06-06_12:00","2022-06-06_12:00"]
}

variable "aws_budget_time_period_start" {
    type = list 
    default = ["2021-06-06_12:00","2021-06-06_12:00","2021-06-06_12:00"]
}

variable "aws_budget_time_unit" {
    type = list 
    default = ["DAILY","DAILY","DAILY",]
}
