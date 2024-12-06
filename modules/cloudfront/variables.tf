# The domain name of the origin (e.g., S3 bucket or API endpoint)
variable "origin_domain_name" {
  description = "Domain name of the origin"
  type        = string
}

# Default root object
variable "default_root_object" {
  description = "Default root object to serve (e.g., index.html)"
  type        = string
  default     = "index.html"
}

