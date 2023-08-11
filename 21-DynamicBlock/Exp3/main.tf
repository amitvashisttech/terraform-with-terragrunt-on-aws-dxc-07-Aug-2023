provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "Allow TLS inbound traffic"
  # vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    for_each = local.ingress
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }



  dynamic "egress" {
    for_each = local.egress
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }

  tags = {
    Name = "demo-sg"
  }
}