resource "azurerm_application_insights" "main" {
  name                = azurecaf_name.azurecaf_names["application_insights"].result
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  application_type    = var.application_type
  retention_in_days   = var.retention_in_days
  tags                = var.tags_params
}
