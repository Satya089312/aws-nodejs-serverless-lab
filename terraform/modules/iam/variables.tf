variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "managed_policy_arns" {
  description = "List of managed IAM policies to attach to the role"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to IAM resources"
  type        = map(string)
  default     = {}
}