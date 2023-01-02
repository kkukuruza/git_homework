data "aws_ami" "amznlx2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*-gp2"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_vpc" "myVPC" {
  tags = {
    "Name" = "myVPC"
  }
}

data "aws_iam_user" "liam" {
  user_name = "Liam"
}

data "aws_iam_user" "noah" {
  user_name = "Noah"
}

data "aws_iam_user" "oliver" {
  user_name = "Oliver"
}

data "aws_iam_user" "elijah" {
  user_name = "Elijah"
}

data "aws_iam_user" "james" {
  user_name = "James"
}

data "aws_iam_user" "william" {
  user_name = "William"
}

data "aws_iam_user" "benjamin" {
  user_name = "Benjamin"
}

data "aws_iam_user" "lucas" {
  user_name = "Lucas"
}

data "aws_iam_user" "henry" {
  user_name = "Henry"
}