resource "azurecaf_name" "azurecaf_names" {
  for_each = var.naming_params

  name          = each.value.name
  resource_type = each.value.resource_type
  clean_input   = each.value.clean_input
}
