resource "azurerm_storage_account" "main" {
  name                     = azurecaf_name.azurecaf_names["storage_account"].result
  location                 = var.location
  resource_group_name      = azurerm_resource_group.main.name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags_params
}
