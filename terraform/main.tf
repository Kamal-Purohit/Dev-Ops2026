provider "aws" {
  
}

resource "aws_s3_bucket" "mys3bucket" {
    bucket = "kamal"
}
