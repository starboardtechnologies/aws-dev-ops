resource "aws_subnet" "aws-devops-vpc-private-subnet" {
  vpc_id     = aws_vpc.devops.id
  cidr_block = "10.0.0.0/24"

  map_customer_owned_ip_on_launch = false

  tags = {
    Name = "aws-vpc=devops-private-subnet"
  }
}
