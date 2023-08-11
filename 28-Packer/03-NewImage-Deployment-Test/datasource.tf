data "aws_ami" "myami" {
  most_recent = true
  owners      = ["450457620738"]

  filter {
    name   = "name"
    values = ["apache-ami-packer-*"]
  }
}
