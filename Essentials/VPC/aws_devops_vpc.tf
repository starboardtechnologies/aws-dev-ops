resource "aws_vpc" "devops" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "devops"
  }
}
