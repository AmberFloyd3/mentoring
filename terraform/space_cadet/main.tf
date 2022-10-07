provider "aws" {
    region = "us-west-1"
}




terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}





resource "aws_instance" "scoobysnack" {
  ami           = ami-08e2d37b6a0129927
  instance_type = "t1.micro"

  tags = {
    Name = "HelloWorld"
  }
}