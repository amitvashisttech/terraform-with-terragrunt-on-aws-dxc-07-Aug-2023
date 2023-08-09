variable "ec2_instance_count" {
  type        = number
  description = "Variable for EC2 Instance count"
  default     = 2
}


variable "ec2_instance_type" {
  type        = string
  description = "Variable for EC2 Instance Type"
  default     = "t2.micro"
}

variable "ec2_instance_name" {
  type        = string
  description = "Variable for EC2 Instance Name"
  default     = "Test-VM"
}


variable "project-name" {
  type        = string
  description = "Variable for EC2 Tag Project Name"
  default     = "Terraform-Demo"
}
