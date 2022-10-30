terraform {
  backend "s3" {
    bucket         = "terraform-up-and-running-state-sourabh"
    region         = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
    key            = "global/s3/terraform.tfstate"
  }
}

resource "aws_instance" "example_test" {
  ami           = "ami-0caef02b518350c8b"
  instance_type = "t2.micro"

}
