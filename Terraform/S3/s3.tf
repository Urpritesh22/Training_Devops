provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "newbucket" {
  bucket = "unique_bucket_name"

  tags = {
    Name = "Bucket1"
  }
}