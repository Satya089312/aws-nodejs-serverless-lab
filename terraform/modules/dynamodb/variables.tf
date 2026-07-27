variable "tables" {
  description = "Configuration of DynamoDB tables to create"

  type = map(object({
    table_name    = string
    billing_mode  = string
    hash_key      = string
    hash_key_type = string
  }))
}

variable "tags" {
  description = "Common tags to apply to DynamoDB tables"
  type        = map(string)
  default     = {}
}