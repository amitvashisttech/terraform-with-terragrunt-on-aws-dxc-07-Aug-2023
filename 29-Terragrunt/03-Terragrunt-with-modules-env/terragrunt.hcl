remote_state {
  backend = "s3"
  config = {
    key     = "terragrunted/${path_relative_to_include()}.tfstate"
    bucket = "terraform-demo-av-jb3-10aug2023"
    region = "us-east-2"
  }
}

generate "providers" {
  path      = "providers.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "aws" { 
  region = "us-east-2"
}

terraform {
  required_providers { 
   aws = {
     source = "hashicorp/aws"
     #version = "=2.97.0"
   }
 }

  backend "s3" {
  }

 
}
EOF
}



locals {
  # Automatically load environment-level variables
  env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  # Automatically load site-level variables
  site_vars = read_terragrunt_config(find_in_parent_folders("site.hcl"))

  # Region 
  regions = ["us-east-2", "us-west-2"]
}



inputs = merge(
  local.env_vars.locals,
  local.site_vars.locals,
)
