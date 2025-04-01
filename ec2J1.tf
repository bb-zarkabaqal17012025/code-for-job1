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

resource "aws_instance" "zarka-server-tf" {
  ami = "ami-05c179eced2eb9b5b"
  instance_type = "t3.nano"
  tags = {
    Name  = "zarka-ec2-J1"
    team  = "Cloudnauts"
    Owner = "zarka.baqal@bigbasket.com"
  }
}