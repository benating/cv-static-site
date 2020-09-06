terraform {
  backend "s3" {
    bucket = "crc-tfstate-bucket"
    key    = "cv-static-site/terraform.tfstate"
    region = "eu-west-2"

    dynamodb_table = "crc-tfstate-locks"
    encrypt        = true
  }
}

provider "aws" {
  version = "~> 3.0"
  region  = local.region
}

locals {
  region = "eu-west-2"
}
