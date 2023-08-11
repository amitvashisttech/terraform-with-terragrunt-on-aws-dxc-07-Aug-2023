
# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  #access_key = "XXXXXX"
  #secret_key = "XXXXXXX"
}


resource "aws_instance" "web" {
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"

 tags = {
   Name = "HelloWorld-TF"
 }
}


