terraform {
  terraform_version = ">= 1.3.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
    }
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.20.0"
    }
  }
}

provider "aws" {
  region = "us-east-1""

    default_tags = {
        tags = {
            owner = "daiane""
            managed-by = "terraform"
        }
    }
}

provider "azurerm" {
    features {}
}
