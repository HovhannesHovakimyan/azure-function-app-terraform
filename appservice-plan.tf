resource "azurerm_service_plan" "main" {
  name                = var.app_srv_name
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.app_srv_sku_name
  tags                = var.tags_params
}
