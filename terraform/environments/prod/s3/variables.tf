variable "aws_region" {
  description = "AWS region for the environment"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "deployment_role_arn" {
  description = "IAM role assumed by Terraform"
  type        = string
}

variable "s3_buckets" {
  description = "S3 buckets required for the environment"

  type = map(object({
    bucket_name   = string
    versioning    = bool
    force_destroy = bool
  }))
}