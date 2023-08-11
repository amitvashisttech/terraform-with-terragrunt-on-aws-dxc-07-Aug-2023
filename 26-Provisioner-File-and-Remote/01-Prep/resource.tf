resource "aws_instance" "web" {
  count                  = var.ec2_instance_count
  ami                    = data.aws_ami.myami.id
  instance_type          = var.ec2_instance_type
  key_name               = aws_key_pair.example_ssh_keypair.key_name
  vpc_security_group_ids = [aws_security_group.demo-sg.id]

  tags = {
    Name = local.frontend_east
  }

  lifecycle {
    create_before_destroy = true
  }

}

