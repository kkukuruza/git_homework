locals {
  ami_id = data.aws_ami.amznlx2.id
  vpc_id = data.aws_vpc.myVPC.id
}

##
resource "aws_subnet" "public_subnet" {
    cidr_block = "10.0.1.0/24"
    vpc_id = local.vpc_id

    tags = {
      "Name" = "Public Subnet"
    }
}

## EC2
resource "aws_instance" "web" {
  ami           = local.ami_id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "HelloWorld"
  }
}


