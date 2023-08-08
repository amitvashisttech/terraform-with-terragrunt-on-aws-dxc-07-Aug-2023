resource "aws_instance" "web" { 
  ami = "ami-02a89066c48741345" 
  instance_type = "t2.micro" 


  tags = {
   Name = "HelloWorld-TF"
  }
}
