output webserver_public_ip_1 {
  value       = aws_instance.web[0].public_ip
  description = "description"
}

output webserver_public_ip_all {
  value       = aws_instance.web.*.public_ip
  description = "description"
}

output webserver_dns_name {
  value       = aws_instance.web.*.public_dns
  description = "description"
}