resource "aws_vpc" "devops" {
  count = var.vpc_count
  cidr_block = "10.0.0.0/16"
  tags = {
      Name = element(var.vpc_tags, count.index)
  }
}

