#Main terraform configuration file

provider "aws" {
  region = "us-east-1"
}

# Reference the s3 module
module "s3_website" "sanswww"{
  source       = "./modules/s3" 
  region       = "us-east-1"  # Set the same AWS region as in the provider block
  bucket_name   = "your-unique-s3-bucket-name"  # Set a unique name for your S3 bucket
  tags = {
    Environment = "Production",
    Project     = "MyWebsite",
  }
}

# You can add more modules for other parts of your infrastructure (cloudfront, acm, dynamodb, lambda_api_gateway) here.
