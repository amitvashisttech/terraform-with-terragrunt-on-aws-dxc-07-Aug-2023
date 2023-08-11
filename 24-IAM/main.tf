// IAM User Creation 

resource "aws_iam_user" "user" {
  name          = "amit-tf-demo"
  path          = "${var.path}"
  force_destroy = "${var.force_destroy}"
}

resource "aws_iam_user" "example" {
  count = "${length(var.username)}"
  name = "${element(var.username,count.index )}"
}

resource "aws_iam_user" "example_seq" {
 count = 3
 name = "terraformtest${count.index}"
}


// Group 
resource "aws_iam_group" "group" {
  name = "test-group"
}



// Group Binding / Memership
resource "aws_iam_group_membership" "team" {
  name = "tftestinggroupmembership"

  users = [
    aws_iam_user.user.name,
  ]

  group = aws_iam_group.group.name
}


// IAM Custom Group Policy
resource "aws_iam_group_policy" "policy" {
  name  = "policy"
  group = "${aws_iam_group.group.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}


