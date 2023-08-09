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



