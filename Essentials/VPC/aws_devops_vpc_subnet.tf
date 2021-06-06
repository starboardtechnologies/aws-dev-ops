resource "aws_subnet" "aws-devops-vpc-subnet" {
  vpc_id     = aws_vpc.devops.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "devops-subnet"
  }
}
