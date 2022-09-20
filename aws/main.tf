provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "first_instance" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}