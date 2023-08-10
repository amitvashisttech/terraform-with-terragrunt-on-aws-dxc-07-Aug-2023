provider "aws" {

 region = "us-east-2"

}



import {
 id = "terraform-demo-av-jb3-10aug2023"
 to = aws_s3_bucket.this
}


import {
 # Ec2 Instance Import Test
 id = "i-02ed6fa46978dad06"
 # Resource address
 to = aws_instance.this
}


import {
 # Ec2 Instance Import Test
 id = "i-03215e3548bb18bc5"
 # Resource address
 to = aws_instance.dxc_ec2
}
