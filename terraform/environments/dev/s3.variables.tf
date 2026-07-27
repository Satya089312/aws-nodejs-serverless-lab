variable "s3_buckets" {
  description = "S3 buckets required for the environment"

  type = map(object({
    bucket_name   = string
    versioning    = bool
    force_destroy = bool
  }))
}