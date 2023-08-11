provider "aws" {
  region = "us-east-2"
}

/*
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
*/


resource "aws_security_group" "demo-sg" {
  for_each    = local.nsgrules
  name        = each.key
  description = "Allow TLS inbound traffic"
  # vpc_id      = aws_vpc.main.id

  ingress {
    from_port        = each.value.from_port
    to_port          = each.value.to_port
    protocol         = each.value.protocol
    cidr_blocks      = each.value.cidr_blocks
  }

  egress {
    from_port        = each.value.from_port
    to_port          = each.value.to_port
    protocol         = each.value.protocol
    cidr_blocks      = each.value.cidr_blocks
  }


  tags = {
    Name = "demo-sg"
  }
}