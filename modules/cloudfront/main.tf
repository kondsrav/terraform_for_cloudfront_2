# Create a CloudFront distribution
resource "aws_cloudfront_distribution" "main" {
  enabled             = true                     # Enable the CloudFront distribution
  default_root_object = var.default_root_object  # Default object served when root is accessed

  # Define the origin (e.g., S3 bucket or another service)
  origin {
    domain_name = var.origin_domain_name         # The domain name of the origin (e.g., S3 bucket)
    origin_id   = "origin-${var.origin_domain_name}" # Unique identifier for this origin
  }

  # Default cache behavior settings
  default_cache_behavior {
    target_origin_id       = "origin-${var.origin_domain_name}" # Link this behavior to the origin
    viewer_protocol_policy = "redirect-to-https"               # Redirect HTTP requests to HTTPS
    allowed_methods        = ["GET", "HEAD"]                   # Allow only GET and HEAD requests
  }

  # Viewer certificate (default CloudFront certificate for HTTPS)
  viewer_certificate {
    cloudfront_default_certificate = true    # Use the default CloudFront certificate
  }
}

