resource "aws_instance" "front" {
  count             = local.az_east_count
  ami               = data.aws_ami.myami_east.id
  instance_type     = var.ec2_instance_type
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]

  tags = {
    Name = local.frontend_name
  }
}


resource "aws_instance" "back" {
  provider          = aws.myprovider2
  ami               = data.aws_ami.myami_west.id
  count             = local.az_west_count
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]
  instance_type     = var.ec2_instance_type
  tags              = local.backend_tags

}