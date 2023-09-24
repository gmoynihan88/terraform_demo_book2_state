provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state"

  # prevent accidential deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}
