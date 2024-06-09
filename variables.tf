variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "environments" {
  description = "Map of environments and their configurations"
  type = map(object({
    subenvs = map(object({
      type    = string
      size    = string
      name    = string
      db_type = string
      count   = number
    }))
  }))
}

