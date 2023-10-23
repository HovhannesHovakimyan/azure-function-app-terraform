resource "azurerm_log_analytics_workspace" "main" {
  name                = azurecaf_name.azurecaf_names["log_analytics_workspace"].result
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
  tags                = var.tags_params
}
