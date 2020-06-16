# Terraform configuration

provider "aws" {
  region = "ca-central-1"
}


module "website_s3_bucket" {

  source = "./modules/aws-s3-static-website-bucket"

  bucket_name = "tel-module-tfe-example"

  tags = var.resource_tags
}