provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = "kamal-testdevopsbucket"
}
