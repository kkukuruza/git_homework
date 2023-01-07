#Creating a bucket

resource "aws_s3_bucket" "first_task_bucket" {
  bucket = "first-task-821423065148"

  tags = {
    Name = "First Task Bucket"
  }
}

resource "aws_s3_bucket_website_configuration" "first_task_bucket" {
  bucket = aws_s3_bucket.first_task_bucket.bucket
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "first_task_bucket" {
  bucket = aws_s3_bucket.first_task_bucket.id
  policy = file("policies/policy_temp1.json")
}

resource "aws_s3_bucket" "second_task_bucket" {
  bucket = "second-task-821423065148"

  tags = {
    Name = "Second Task Bucket"
  }
}

resource "aws_s3_bucket_website_configuration" "second_task_bucket" {
  bucket = aws_s3_bucket.second_task_bucket.bucket
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "second_task_bucket" {
  bucket = aws_s3_bucket.second_task_bucket.id
  policy = file("policies/policy_temp2.json")
}

resource "aws_s3_bucket" "third_task_bucket" {
  bucket = "third-task-821423065148"

  tags = {
    Name = "Third Task Bucket"
  }
}

resource "aws_s3_bucket_website_configuration" "third_task_bucket" {
  bucket = aws_s3_bucket.third_task_bucket.bucket
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "third_task_bucket" {
  bucket = aws_s3_bucket.third_task_bucket.id
  policy = file("policies/policy_hospital.json")
}