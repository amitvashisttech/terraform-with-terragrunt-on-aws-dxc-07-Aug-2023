provider "aws" { 
  region = "us-east-2"
}

variable  "cidr_block" {
   default     = ["0.0.0.0/0"]
}

resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "Allow TLS inbound traffic"
  # vpc_id      = aws_vpc.main.id

ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
     cidr_blocks      = var.cidr_block
}

ingress {
    from_port        = 8200
    to_port          = 8200
    protocol         = "tcp"
     cidr_blocks      = var.cidr_block
  }


ingress {
    from_port        = 8201
    to_port          = 8201
    protocol         = "tcp"
     cidr_blocks      = var.cidr_block
  }  

ingress {
    from_port        = 8300
    to_port          = 8300
    protocol         = "tcp"
     cidr_blocks      = var.cidr_block
 }


  egress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = var.cidr_block
  }

egress {
    from_port        = 8200
    to_port          = 8200
    protocol         = "tcp"
    cidr_blocks      = var.cidr_block
}

  tags = {
    Name = "demo-sg"
  }
}
