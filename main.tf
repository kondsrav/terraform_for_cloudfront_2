# Specify the AWS provider
provider "aws" {
  region = "us-east-1" # AWS region
}

# Call the CloudFront module
module "cloudfront" {
  source              = "./modules/cloudfront"         # Path to the CloudFront module
  origin_domain_name  = "my-s3-bucket.s3.amazonaws.com" # Domain name of the origin (e.g., S3 bucket)
  default_root_object = "index.html"                   # Default file to serve
}

