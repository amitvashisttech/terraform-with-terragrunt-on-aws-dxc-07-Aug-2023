resource "aws_instance" "web" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami
  availability_zone = var.zones[count.index]
  instance_type     = var.ec2_instance_type
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = var.ec2_instance_name
  }
}

// Provisioned & attached the EIP 
resource "aws_eip" "lb" {
  vpc = true 
}

resource "aws_eip_association" "assoc_eip" { 
  instance_id = aws_instance.web[0].id
  allocation_id = aws_eip.lb.id
}

// Provisioned & attached the EBS Volume

resource "aws_ebs_volume" "my-vol" {
  count             = var.ec2_instance_count
  availability_zone = var.zones[count.index]
  size = 40 
  tags = { 
    Name = "my-vol-ebs"
  }
}

resource "aws_volume_attachment" "ebs_attach" { 
   device_name = "/dev/sdh"
   count             = var.ec2_instance_count
   volume_id  = aws_ebs_volume.my-vol[count.index].id
   instance_id = aws_instance.web[count.index].id
}
