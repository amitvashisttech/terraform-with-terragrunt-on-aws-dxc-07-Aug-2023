variable "zones" {
  type        = list(any)
  description = "Zone Variable for EC2 Instance placement"
  default     = ["us-east-2a", "us-east-2b"]
}

variable "ec2_instance_count" {
  type        = number
  description = "Variable for EC2 Instance count"
  default     = 2
}

variable "ec2_instance_ami" {
  type        = string
  description = "Variable for EC2 Instance AMI"
  default     = "ami-02a89066c48741345"
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

