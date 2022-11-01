provider "aws" {
  region = "us-east-2"
}
terraform {
  backend "s3" {
    key = "workspace-example/terraform.tfstate"
  }
}

resource "aws_instance" "example_test" {
  ami           = "ami-0caef02b518350c8b"
  instance_type = "t2.micro"
}
