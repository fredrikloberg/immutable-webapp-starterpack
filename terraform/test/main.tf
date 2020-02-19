terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "eu-north-1"
  version = "~> 2.47"
}

resource "aws_s3_bucket" "assets" {
  bucket = "min-immutable-webapp-bucket"
  acl = "public-read"

  tags = {
    managedBy = "terraform"
    environment = "common"
    app = "immutable-webapp"
  }
}

resource "aws_s3_bucket" "assets-test" {
  bucket = "min-mutable-webapp-bucket"
  acl = "public-read"

  tags = {
    managedBy = "terraform"
    environment = "test"
    app = "immutable-webapp"
  }
}
