terraform {
  backend "s3" {
    bucket = "821423065148"
    key    = "terraform/tftask"
    region = "us-east-1"
  }
}
