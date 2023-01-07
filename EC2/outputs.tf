output "ami" {
    value = data.aws_ami.amznlx2.id
}

output "vpc_id" {
  value = data.aws_vpc.myVPC.id
}