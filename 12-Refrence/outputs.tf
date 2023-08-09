output "front_public_ips" {
  value       = aws_instance.front.*.public_ip
  description = "Display the Public IP of Ec2 Instance"
}

output "front_public_dns" {
  value       = aws_instance.front.*.public_dns
  description = "Display the Public IP of Ec2 Instance"
}

output "front_public_ip_1" {
  value       = aws_instance.front[0].public_ip
  description = "Display the Public IP of Ec2 Instance"
}

output "front_public_ip_2" {
  value       = aws_instance.front[1].public_ip
  description = "Display the Public IP of Ec2 Instance"
}

output "myami_datasource_details" {
  value       = data.aws_ami.myami
  description = "Display the Public IP of Ec2 Instance"
}