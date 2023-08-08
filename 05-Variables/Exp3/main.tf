resource "aws_instance" "web" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami
  instance_type     = var.ec2_instance_type
  availability_zone = var.zones[count.index]


  tags = {
    Name = var.ec2_instance_name
  }
}
