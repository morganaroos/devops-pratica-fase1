output "bucket_name" {
  description = "Nome do bucket criado"
  value       = aws_s3_bucket.static_site.bucket
}

output "website_endpoint" {
  description = "Endpoint do site estático no S3"
  value       = aws_s3_bucket_website_configuration.static_site.website_endpoint
}