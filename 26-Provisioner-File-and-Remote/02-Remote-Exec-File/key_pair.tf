# Create SSH Key
resource "tls_private_key" "example_ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "write_private_key" {
  content         = tls_private_key.example_ssh.private_key_pem
  filename        = "${path.root}/.terrform/.ssh/admin_rsa"
  file_permission = 0600
}

resource "local_file" "write_public_key" {
  content         = tls_private_key.example_ssh.public_key_openssh
  filename        = "${path.root}/.terrform/.ssh/admin_rsa.pub"
  file_permission = 0600
}

resource "aws_key_pair" "example_ssh_keypair" {
  key_name = "example_ssh_keypair-av-10-July-2023"
  public_key = tls_private_key.example_ssh.public_key_openssh
}
