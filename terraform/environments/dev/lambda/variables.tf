variable "aws_region" {
  type = string
}

variable "environment" {
  type = string
}

variable "project_name" {
  type = string
}

variable "function_name" {
  type = string
}

variable "runtime" {
  type = string
}

variable "handler" {
  type = string
}

variable "filename" {
  type = string
}

variable "memory_size" {
  type    = number
  default = 128
}

variable "timeout" {
  type    = number
  default = 10
}

variable "iam_state_bucket" {
  description = "S3 bucket containing IAM Terraform state"
  type        = string
}

variable "iam_state_key" {
  description = "IAM Terraform state key"
  type        = string
}