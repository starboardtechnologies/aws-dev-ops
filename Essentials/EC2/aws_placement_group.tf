#"Placement Groups in AWS" (https://medium.com/an-idea/placement-groups-in-aws-531b0912178)

#Instance Types Supported: 
#General purpose: A1, M4, M5, M5a, M5ad, M5d, M5dn, and M5n
#Compute optimized: C3, C4, C5, C5d, C5n, and cc2.8xlarge
#Memory optimized: cr1.8xlarge, R3, R4, R5, R5a, R5ad, R5d, R5dn, R5n, X1, X1e, and z1d
#Storage optimized: D2, H1, hs1.8xlarge, I2, I3, and I3en
#Accelerated computing: F1, G2, G3, G4dn, Inf1, P2, P3, and P3dn

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_launch_configuration" "devops_launch_configuration" {
  count         = 3  
  name          = var.devops_launch_configuration_names[count.index]
  image_id      = data.aws_ami.ubuntu.id
  instance_type = var.devops_launch_configuration_instance_type[count.index]
}
