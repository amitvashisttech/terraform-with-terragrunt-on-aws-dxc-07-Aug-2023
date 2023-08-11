
variable "ec2_instance_type" {
  description = "Ec2 Instance Type for Deployments"
  type        = string
  default     = "t2.micro"
}

variable "project-name" {
  description = "Ec2 Instance Tag ProjectName"
  type        = string
  default     = "Terrafrom-Demo"
}


variable "ec2_instance_count" {
  description = "Ec2 Instance Count for Deployments"
  default     = 1
}


variable "region" {
  description = "Ec2 Instance Count for Deployments"
  default     = "us-east-2"
}

variable "sg_id" {
  description = "Ec2 Instance Security Group ID"
  default     = "us-east-2"
}

variable "key_name" {
  description = "Ec2 Instance SSH Key Name on AWS Portal"
  default     = "us-east-2"
}

variable "key_path" {
  description = "Ec2 Instance SSH Key Path on Local / Terraform machine"
  default     = "us-east-2"
}


variable "sg_ports" { 
  type = list(number)
  description = "Allow Inbound Traffic to multiple ports"
  default = [22,80,443]
}
