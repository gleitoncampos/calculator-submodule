terraform {
  backend "s3" {
    bucket = "gleitoncampos-terraform-backend"
    region = ""
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