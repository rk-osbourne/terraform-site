provider "aws" {
  region = var.region
}

resource "aws_dynamodb_table" "visitor_counter" {
  name           = var.table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "visitor_id"
  attribute {
    name = "visitor_id"
    type = "S"
  }

}
