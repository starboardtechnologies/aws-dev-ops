resource "aws_instance" "ec2instance" {
  ami               =  var.ec2_instance_ami
  availability_zone =  var.ec2_instance_availability_zone
  count             =  var.instance_count
  instance_type     =  var.ec2_instance_type
  monitoring        =  var.ec2_instance_monitoring

  tags = {
      Name = element(var.ec2_instance_tags, count.index)
  }
}

