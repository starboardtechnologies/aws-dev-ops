resource "aws_subnet" "aws-cicd-vpc-subnet" {
  vpc_id     = aws_vpc.cicd.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "cicd"
  }
}
