provider "aws" {
  shared_credentials_file = "${pathexpand("C:/Users/HaiNT/.aws/credentials")}"
  region = "us-east-1"
}



resource "aws_instance" "UdacityT2" {
  count = "2"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    name = "Udacity Terraform"
  }
}

resource "aws_instance" "UdacityM4" {
  count = "2"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "m4.large"
  tags = {
    name = "Udacity Terraform"
  }
}