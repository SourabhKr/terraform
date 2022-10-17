provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "first_instance" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
}