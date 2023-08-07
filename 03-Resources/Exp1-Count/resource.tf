provider "aws" {
  region = "us-east-2"
  #access_key = "XXXXX"
  #secret_key = "YYYYYY"
}

resource "aws_instance" "web" {
  count = 1
  ami           = "ami-02a89066c48741345"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-AV"
  }
}
