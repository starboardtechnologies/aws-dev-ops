resource "aws_instance" "ec2instance" {
  count = var.instance_count
  ami           =  var.ec2_instance_ami
  instance_type =  var.ec2_instance_type
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

