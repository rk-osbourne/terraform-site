# variables.tf

variable "region" {
  description = "AWS region for the CloudFront distribution and ACM certificate"
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "Domain name for the CloudFront distribution"
  type        = string
}
