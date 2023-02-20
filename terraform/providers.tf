terraform {
  backend "s3" {
    bucket = "gleitoncampos-terraform-backend"
    region = "us-west-1"
    key = "calculator-submodule/"
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