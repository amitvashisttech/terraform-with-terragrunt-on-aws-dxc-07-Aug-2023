variable "zones" { 
   type = list
   description = "Zone Variable for EC2 Instance placement"
   default     = ["us-east-2a", "us-east-2b"]
}



resource "aws_instance" "web" {
  count = 2  
  ami = "ami-02a89066c48741345" 
  instance_type = "t2.micro" 
  availability_zone = var.zones[count.index]


  tags = {
   Name = "HelloWorld-TF"
  }
}
