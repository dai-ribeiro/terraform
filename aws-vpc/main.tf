terraform {
    required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
    }
  }

    backend "s3" {
    bucket = "bucket-daiane-remote_state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"

    default_tags {
      tags = {
        owner = "daiane"
        managed-by = "terraform"
      }
    }
}