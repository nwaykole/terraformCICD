terraform {
  backend "s3" {
    bucket = "nuttaterra"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
resource "aws_instance" "web" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t3.micro"
  subnet_id= aws_subnet.my_subnet.id
tags = {
    Name = "HelloWorld"
  }
}
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"
}