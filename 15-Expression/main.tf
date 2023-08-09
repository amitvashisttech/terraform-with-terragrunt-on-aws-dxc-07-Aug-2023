resource "aws_instance" "front_east" {
  count             = var.ec2_instance_count
  ami               = data.aws_ami.myami_east.id
  instance_type     = var.ec2_instance_type
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]
  depends_on        = [aws_instance.back_east]
  tags = {
    Name = local.frontend_east_name
  }

  lifecycle { 
    create_before_destroy = true 
  }
}



resource "aws_instance" "back_east" {
  count             = var.ec2_instance_count
  ami               = data.aws_ami.myami_east.id
  instance_type     = var.ec2_instance_type
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]

  tags = {
    Name = local.backend_east_name
  }

  
  lifecycle { 
    prevent_destroy = true 
  }
}


# Using the Alias Provider Block or 2nd Provider

resource "aws_instance" "front_west" {
  provider          = aws.myprovider2
  ami               = data.aws_ami.myami_west.id
  #count             = var.ec2_instance_count
  count             = var.multi-region-deployment ? var.ec2_instance_count : 0 
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]
  instance_type     = var.ec2_instance_type
  depends_on        = [aws_instance.back_west]

  tags = {
    Name = local.frontend_west_name
  }

  lifecycle { 
    create_before_destroy = true 
  }

}




resource "aws_instance" "back_west" {
  provider          = aws.myprovider2
  ami               = data.aws_ami.myami_west.id
  count             = var.multi-region-deployment ? var.ec2_instance_count : 0
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]
  instance_type     = var.ec2_instance_type
    tags = {
    Name = local.backend_west_name
  }


  lifecycle { 
    prevent_destroy = true 
  }
}