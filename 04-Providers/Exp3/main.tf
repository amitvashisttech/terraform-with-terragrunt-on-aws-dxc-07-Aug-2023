resource "aws_instance" "web-east" {
  ami           = "ami-02a89066c48741345"
  instance_type = "t2.micro"
  tags = {
    Name = "East"
  }
}



resource "aws_instance" "web-west" {
  provider      = aws.myprovider2
  #ami           = "ami-02a89066c48741345"
  ami           = "ami-00970f57473724c10"
  instance_type = "t2.micro"
  tags = {
    Name = "West"
  }
}
