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

variable "dynamodb_tables" {
  description = "DynamoDB tables required for the environment"

  type = map(object({
    table_name    = string
    billing_mode  = string
    hash_key      = string
    hash_key_type = string
  }))
}