locals {
  frontend_east = join("-", tolist([var.project-name, "Ec2-Instance"]))
  key_name = join("-", tolist(["example_ssh_keypair", random_string.test.id ]))
  sg_name  = join("-", tolist(["example_sg_av_demo", random_string.test.id ]))
}

