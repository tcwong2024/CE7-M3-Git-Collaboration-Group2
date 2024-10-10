terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    # Added by wtc - Move archive provider from lambda.tf
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0"
    }
  }
  # Added by wtc 
  required_version = ">= 1.1.0"
}

# Configure the AWS Provider
provider "aws" {
  # Added by WTC
  region = var.region
}