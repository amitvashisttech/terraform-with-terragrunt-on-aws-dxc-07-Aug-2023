variable "ec2_instance_count" {
    type        = map
    description = "Ec2 Instance Count Based on WorkSpace as Key"
    default     = {
        default = 1
        dev     = 2
        prod    = 3 
        dxc     = 5
    }
}
  
variable "ec2_instance_type" {
    type        = map
    description = "Ec2 Instance Type Based on WorkSpace as Key"
    default     = {
        default = "t2.nano"
        dev     = "t2.micro"
        prod    = "t2.large"
        dxc     = "t2.nano"
    }
}
  
  
