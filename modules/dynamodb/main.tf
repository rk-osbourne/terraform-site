provider "aws" {
  region = var.region
}

resource "aws_dynamodb_table" "website_counter" {
  name           = var.table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "VisitorId"
  attribute {
    name = "VisitorId"
    type = "S"
  }

}
