#Creating a bucket

resource "aws_s3_bucket" "my_bucket" {
  bucket = data.aws_caller_identity.account_id.account_id

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}