terraform { 
  backend "s3" {
    bucket = "terraform-demo-av-jb3-10aug2023"
    key    = "amitvashist/terraform.tfstate"
    region = "us-east-2"
  }

  required_providers {
    aws = { 
      source = "hashicorp/aws"
      version = ">=5.11"
    }
  }

}

