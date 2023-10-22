resource "azurerm_service_plan" "main" {
  name                = "appsrvplan-hhcompany"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "Y1"
  tags                = var.tags_params
}
