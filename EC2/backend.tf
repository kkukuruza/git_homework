terraform {
  backend "s3" {
    bucket = "821423065148"
    key    = "tfstate"
    region = "us-east-1"
  }
}
