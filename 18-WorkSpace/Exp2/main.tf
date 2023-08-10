provider "aws" { 
  region = "us-east-2"
}

resource "aws_instance" "web" { 
  // Old Way 
 
  # instance_type = "t2.micro" 

  // New Way
  ami = "ami-02a89066c48741345"
  count = lookup(var.ec2_instance_count, terraform.workspace ) 
  instance_type = lookup(var.ec2_instance_type, terraform.workspace ) 

  tags = {
   Name = local.name
  }
}


locals {
  name = join("-", (["EC2-Instance", terraform.workspace]))
}