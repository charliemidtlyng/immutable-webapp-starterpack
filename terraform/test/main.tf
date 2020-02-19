terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "eu-north-1"
  version = "~> 2.47"
}

resource "aws_s3_bucket" "assets" {
  bucket = "bucket-for-charlies-terraform-js"
  acl    = "public-read"

  tags = {
    system      = "immutable-webapp"
    environment = "common"
    managed_by  = "terraform"
  }
}

resource "aws_s3_bucket" "index-assets-test" {
  bucket = "bucket-for-charlies-terraform-index-filer-test"
  acl    = "public-read"

  tags = {
    system      = "immutable-webapp"
    environment = "test"
    managed_by  = "terraform"
  }
}
