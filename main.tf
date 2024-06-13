terraform {
  required_version = ">= 1.14.0"
}

provider "aws" {
  region = var.aws_region
}

module "environments" {
  source = "./modules/object"
  for_each = var.environments

  environment = each.key
  config      = each.value
}

