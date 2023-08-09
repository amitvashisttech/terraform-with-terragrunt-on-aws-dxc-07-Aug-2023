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

output "aws_availability_zones_details" {
  value       = data.aws_availability_zones.zone_east.names
  description = "Display the Public IP of Ec2 Instance"
}


output "aws_availability_zones_details_2" {
  value       = data.aws_availability_zones.zone_west.names
  description = "Display the Public IP of Ec2 Instance"
}


output "aws_availability_zones_details_3" {
  value       = concat(data.aws_availability_zones.zone_east.names, data.aws_availability_zones.zone_west.names)
  description = "Display the Public IP of Ec2 Instance"
}

