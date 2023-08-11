resource "aws_security_group" "demo-sg" {
  name  = "example_sg_av"
  description = "Allow Inbound Traffic to multiple ports"

dynamic "ingress" {
  for_each = var.sg_ports
  content {  
    from_port = ingress.value
    to_port   = ingress.value
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


dynamic "egress" {
  for_each = var.sg_ports
  content {  
    from_port = egress.value
    to_port   = egress.value
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

  tags = {
    Name  = "demo-tf-sg"
  }
}