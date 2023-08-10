Terraform 1.5 import

In Terraform 1.5, there is a new import mechanism available. A new top-level import block can be defined in your code to allow import operations. As this block is added in the code, import will not be a state operation, from now on, as for every other resource, it becomes a plannable operation. 

Let’s use a concrete example to see the new import in action.

For this, I have created one s3 buckets manually and I want to import them in my state:

```
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

```

The import block, as you can see above, takes two parameters:

    id → The id of the resource used in your cloud provider
    to → The resource address that will be used in Terraform

Next, if you want to generate the configuration automatically, you can run the following command:

```
terraform plan -generate-config-out=generated_resources.tf
```

Now we can run terraform apply to import the resource & create a new statefile which has link established with AWS Respective Resource: 

```
terraform apply 

Apply complete! Resources: 1 imported, 0 added, 0 changed, 0 destroyed.

```