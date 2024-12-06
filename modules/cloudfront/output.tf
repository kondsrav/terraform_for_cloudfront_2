# Output the CloudFront distribution's domain name
output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.main.domain_name
}

