
resource "random_string" "test" {
  length = 10
  lower  = true
  upper  = false
  special     = false
}

locals {
  s3_bucket_name = join("-", tolist(["my-s3-bucket-av", random_string.test.id ]))
}


output name {
  value       = random_string.test.id

}


module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  #bucket = "my-s3-bucket-av-2023-09-08"
  bucket = local.s3_bucket_name
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}

/*
module "my_s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket--2023-09-08"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
*/