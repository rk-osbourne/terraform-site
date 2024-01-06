variable "region" {
  description = "AWS region for the DynamoDB table"
  type        = string
  default     = "us-east-1"
}

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}