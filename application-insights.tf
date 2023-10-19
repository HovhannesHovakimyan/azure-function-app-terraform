resource "azurerm_application_insights" "main" {
  name                = azurecaf_name.azurecaf_names["application_insights"].result
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  application_type    = "web"
  retention_in_days   = 30
  tags                = var.tags_params
}
