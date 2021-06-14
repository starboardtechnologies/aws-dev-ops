resource "aws_subnet" "vpc_subnets" {
  count      = 3  
  cidr_block = var.vpc_cidr_blocks[count.index]
  vpc_id     = var.vpc_id[count.index]
  tags = {
      Name = element(var.vpc_subnet_tags, count.index)
  }
}

