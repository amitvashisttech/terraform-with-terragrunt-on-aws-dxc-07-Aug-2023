resource "aws_instance" "front" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami
  instance_type     = var.ec2_instance_type
  availability_zone = var.zones[count.index]


  tags = {
    Name = local.frontend_name
  }
}


resource "aws_instance" "back" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami
  instance_type     = var.ec2_instance_type
  availability_zone = var.zones[count.index]


  tags = local.backend_tags

}