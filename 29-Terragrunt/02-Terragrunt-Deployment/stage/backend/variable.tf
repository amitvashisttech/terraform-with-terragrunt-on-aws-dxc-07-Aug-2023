variable "zones" {
  type        = list(any)
  default     = ["us-east-2a", "us-east-2b"]
  description = "Zone Variable for Ec2 Instance"
}

variable "ec2_instance_type" {
  description = "Ec2 Instance Type for Deployments"
  type        = string
  default     = "t2.micro"
}



variable "ec2_instance_count" {
  description = "Ec2 Instance Type for Deployments"
  type        = string
  default     = 2
}


variable "ec2_instance_ami" {
  description = "Ec2 Instance AMI for Deployments"
  type        = string
  default     = "ami-03f38e546e3dc59e1"
}



variable "ec2_instance_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Test"
}