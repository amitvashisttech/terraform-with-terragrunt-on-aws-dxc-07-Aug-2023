locals {
  frontend_east_name = join("-", tolist([var.project-name, "frontend-east"]))
  backend_east_name  = join("-", tolist([var.project-name, "backend-east"]))
  frontend_west_name = join("-", tolist([var.project-name, "frontend-west"]))
  backend_west_name  = join("-", tolist([var.project-name, "backend-west"]))

}



