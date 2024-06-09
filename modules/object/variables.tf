variable "environment" {
  description = "Name of the environment"
  type        = string
}

variable "config" {
  description = "Configuration for the environment"
  type = object({
    subenvs = map(object({
      type    = string
      size    = string
      name    = string
      db_type = string
      count   = number
    }))
  })
}

