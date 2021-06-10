resource "aws_instance" "ec2instance" {
  count = var.instance_count
  ami           =  var.ec2_instance_ami
  instance_type =  var.ec2_instance_type
  tags = {
      Name = element(var.instance_tags, count.index)
  }
}

