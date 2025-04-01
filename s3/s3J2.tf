terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"

}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "zarka-bucket-tf-123"  # Change to a globally unique name
  acl    = "public-read"  # Options: private, public-read, public-read-write, authenticated-read

  tags = {
    Name  = "zarka-bucket-tf-123"
    team  = "Cloudnauts"
    Owner = "zarka.baqal@bigbasket.com"
  }
}



