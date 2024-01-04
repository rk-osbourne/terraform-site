#Main terraform configuration file

provider "aws" {
  region = "us-east-1"
}


# s3 module
module "s3_website" "sanswww"{
  source       = "./modules/s3" 
  region       = "us-east-1"  
  bucket_name   = "filler"  # Add a unique name for your S3 bucket
 
}

# cloudfront_acm module
module "cloudfront_acm" {
  source       = "./terraform-modules/cloudfront_acm"
  region       = "us-east-1" 
  domain_name  = "fillerdomain.com"  # Set your domain name
}



