provider "aws" {
  region = "us-east-2"
}

variable "cidr_block" {
  default = ["0.0.0.0/0"]
}

variable "ingress_port" {
  type        = list(number)
  description = "Allow Inbound Traffic Port No's"
  default     = [443, 8200, 8201, 8300, 8301, 8400, 8500, 9000]
}

variable "egress_port" {
  type        = list(number)
  description = "Allow Outbound Traffic Port No's"
  default     = [443, 8200, 8080]
}


resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "Allow TLS inbound traffic"
  # vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    for_each = var.ingress_port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = var.cidr_block
    }
  }



  dynamic "egress" {
    for_each = var.egress_port
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = var.cidr_block
    }
  }

  tags = {
    Name = "demo-sg"
  }
}