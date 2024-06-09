resource "terraform_data" "object" {
  for_each = merge(var.config.subenvs, { "": var.config })

  input = {
    name    = local.generate_name(var.environment, each.key, "", each.value.type, each.value.name, each.value.count)
    type    = each.value.type
    size    = each.value.size
    db_type = each.value.db_type
    count   = each.value.count
  }
}

locals {
  generate_name = { 
    env, subenv = "", parent_obj = "", type, unique_name, count = 1 -> {
      parts = [env, subenv, parent_obj, type, unique_name]
      name = join("-", compact(parts))
      if count > 1 {
        name = "${name}-${format("%02d", count)}"
      }
      return name
    }
  }
}

