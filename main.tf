#Main terraform configuration file

provider "aws" {
  region = "us-east-1"
}


# s3 module
module "s3_website" "sanswww"{
  source       = "./modules/s3" 
  region       = "us-east-1"  
  bucket_name   = "filler" 
 
}

# cloudfront_acm module
module "cloudfront_acm" {
  source       = "./terraform-modules/cloudfront_acm"
  region       = "us-east-1" 
  domain_name  = "fillerdomain.com" 
}

# dynamodb
module "dynamodb_table" {
  source       = "./terraform-modules/dynamodb"
  region       = "us-east-1"  
  table_name   = "filer-dynamodb-table-name"  
}

module "lambda" {
  source = "./modules/lambda"
  region = "us-east-1" 
}

module "apigateway" {
  source = "./modules/api_gateway"
  region = "us-east-1" 
}