resource "aws_instance" "front" {
  count             = var.ec2_instance_count
  #ami               = var.ec2_instance_ami
  ami               = data.aws_ami.myami_east.id
  instance_type     = var.ec2_instance_type
  
  #availability_zone = var.zones[count.index]
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]

  tags = {
    Name = local.frontend_name
  }
}


resource "aws_instance" "back" {
  provider = aws.myprovider2
  ami               = data.aws_ami.myami_west.id
  count             = var.ec2_instance_count
  #ami               = var.ec2_instance_ami
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]
  instance_type     = var.ec2_instance_type
  #availability_zone = var.zones[count.index]


  tags = local.backend_tags

}