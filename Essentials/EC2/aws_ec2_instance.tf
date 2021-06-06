resource "aws_instance" "ec2instance" {
  count = var.instance_count
  ami           = "ami-0cf6f5c8a62fa5da6"
  instance_type = "t2.micro"
  tags = {
      Name = element(var.instance_tags, count.index)
  }
}

variable "instance_count" {
  type = number
  default = 3
}

variable "instance_tags" {
  type = list
  default = ["dev-ec2instance", "stage-ec2instance", "prod-ec2instance"]
}

