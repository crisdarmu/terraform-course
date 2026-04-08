terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.46.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">=3.4.3, <4.0.0"
    }
  }
  required_version = "~>1.14.0"
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = var.common_tags
  }
}