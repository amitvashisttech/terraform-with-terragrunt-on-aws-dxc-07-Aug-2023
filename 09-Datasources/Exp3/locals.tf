locals {
  frontend_name = join("-", tolist([var.project-name, "frontend"]))
  backend_name  = join("-", tolist([var.project-name, "backend"]))
  az_east_count = length(data.aws_availability_zones.zone_east.names)
  az_west_count = length(data.aws_availability_zones.zone_west.names)
}



locals {
  backend_tags = {
    Owner       = "DevOps Team"
    Project     = "Data Platform Development"
    Env         = "Dev"
    Application = "Backend DB"
    Name        = local.backend_name

  }
}