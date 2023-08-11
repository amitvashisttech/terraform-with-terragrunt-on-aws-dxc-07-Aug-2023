resource "aws_instance" "web" {
  count             = var.ec2_instance_count
  ami               = data.aws_ami.myami.id
  instance_type     = var.ec2_instance_type
  
  tags = {
    Name = local.frontend_east
  }

  lifecycle {
    create_before_destroy = true 
  }
}

