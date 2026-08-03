variable "buckets" {
  description = "Configuration of S3 buckets to create"

  type = map(object({
    bucket_name   = string
    versioning    = string
    force_destroy = bool
  }))
}

variable "tags" {
  description = "Common tags to apply to S3 buckets"
  type        = map(string)
  default     = {}
}
