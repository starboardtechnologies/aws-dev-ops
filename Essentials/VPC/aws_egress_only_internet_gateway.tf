resource "aws_egress_only_internet_gateway" "aws-egress-only-internet-gateway" {
  vpc_id = aws_vpc.devops.id

  tags = {
    Name = "aws-egress-only-internet-gateway"
  }
}
