terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      version = ">= 4.50.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
