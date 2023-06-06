resource "aws_vpc" "vpc_east" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "vpc_east_ohio" {
  cidr_block = "10.1.0.0/16"
  provider = aws.ohio
}

resource "aws_s3_bucket" "first_bucket" {
    bucket = "jamalbishop-first-bucket"
}

resource "aws_instance" "my_instance" {
    ami = "ami-01107263728f3bef4"
    instance_type = "t2.micro"
}