terraform {
  backend "s3" {
    bucket = var.s3_backend
    region = var.region
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = var.region
}