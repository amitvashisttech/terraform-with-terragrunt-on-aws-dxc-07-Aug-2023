locals {
  frontend_east = join("-", tolist([var.project-name, "Ec2-Instance"]))
}

