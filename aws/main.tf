provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "first_instance" {
  ami = "ami-05ff5eaef6149df49"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-example"
  }
}