provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform1137022026" {
  bucket = "terraform1137022026"
}
# Changing location of state file to S3 so that a team would be able to make changes at a single location which is accessible to them.
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform1137022026"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}
