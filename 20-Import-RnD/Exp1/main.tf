provider "aws" {

 region = "us-east-2"

}



import {

 # ID of the cloud resource

 # Check provider documentation for importable resources and format

 id = "terraform-demo-av-jb3-10aug2023"

 # Resource address

 to = aws_s3_bucket.this

}
