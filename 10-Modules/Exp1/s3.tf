variable "my_bucket_name" {
  type        = string
  default     = "my-test-bucket"
  description = "Please Provide a Uniq Name to for your bucket i.e my-s3-bucket-av-2023-09-08"
}



module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.my_bucket_name
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
