output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.website.bucket
}

output "s3_bucket_website_endpoint" {
  description = "Endpoint for the S3 bucket website"
  value       = aws_s3_bucket.website.website_endpoint
}
