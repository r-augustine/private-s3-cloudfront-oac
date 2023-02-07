terraform {
  required_version = ">= 1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48.0"
    }
  }

  cloud {
    organization = "r-augustine"

    workspaces {
      name = "private-s3-cloudfront-oac"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
