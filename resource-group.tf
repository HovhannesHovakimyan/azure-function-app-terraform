resource "azurerm_resource_group" "main" {
  name     = azurecaf_name.azurecaf_names["resource_group"].result
  location = var.location
  tags     = var.tags_params
}
