remote_state {
  backend = "s3"
  
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }


  config = {
    key     = "${path_relative_to_include()}/terrafrom.tfstate"
    bucket = "terraform-demo-av-jb3-10aug2023"
    region = "us-east-2"
  }
}


