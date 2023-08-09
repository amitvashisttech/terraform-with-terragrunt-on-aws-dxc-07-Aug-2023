module "frontend_east" { 
  source = "../modules/ec2" 
  ec2_instance_count = 1
  project-name = "Frontend-East"
}

module "frontend_west" { 
  source = "../modules/ec2" 
  ec2_instance_count = 1
  project-name = "Frontend-West"
  region = "us-west-2"
}

/*
output "frontend_east_public_ip" {
  value       = module.frontend_east.aws_instance.front[0].public_ip
}
*/


output "frontend_east_public_ip" {
  value       = module.frontend_east.public_ip
}

output "frontend_west_public_ip" {
  value       = module.frontend_west.public_ip
}

output "public_ips" {
  value       = "${tolist([module.frontend_west.public_ip, module.frontend_east.public_ip])}"
}

output "public_dns" {
  value       = "${tolist([module.frontend_west.public_dns, module.frontend_east.public_dns])}"
}

output "private_ips" {
  value       = "${tolist([module.frontend_west.private_ip, module.frontend_east.private_ip])}"
}