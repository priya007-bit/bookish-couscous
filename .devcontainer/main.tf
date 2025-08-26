provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}


provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    provider = aws.us-east-2
  }
}