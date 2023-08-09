locals {
  frontend_name = join("-", tolist([var.project-name, "Ec2-Instance"]))
}

