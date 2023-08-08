locals {
  frontend_name = join("-", tolist([var.project-name, "frontend"]))
}

