output web_public_ips {
  value       = aws_instance.web.*.public_ip  
  description = "Display the Public IP of Ec2 Instance"
}

output web_public_dns {
  value       = aws_instance.web.*.public_dns  
  description = "Display the Public IP of Ec2 Instance"
}

output web_public_ip_1{
  value       = aws_instance.web[0].public_ip  
  description = "Display the Public IP of Ec2 Instance"
}

output web_public_ip_2{
  value       = aws_instance.web[1].public_ip  
  description = "Display the Public IP of Ec2 Instance"
}