variable "s3_backend" {
  type        = string
  description = "Bucket to be used as backend"
  default     = "gleitoncampos-terraform-backend" 
}

variable "region" {
  type        = string
  description = "The AWS Region to use"
  default     = "us-east-1"
}
variable "bucket_prefix" {
  type        = string
  description = "The prefix for the S3 bucket"
  default     = "tf-s3-website-"
}
variable "domain_name" {
  type        = string
  description = "The domain name to use"
  default     = "calculator.gleitoncampos.cf"
}
variable "service_name" {
  type        = string
  description = "The service name"
  default     = "calculator-example"
}
variable "build_folder" {
  type        = string
  description = "The folder that build artifacts are available to upload do s3"
  default     = "calculator/build/"
}