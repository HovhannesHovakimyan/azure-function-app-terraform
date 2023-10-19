resource "azurerm_storage_queue" "main" {
  name                 = azurecaf_name.azurecaf_names["storage_queue"].result
  storage_account_name = azurerm_storage_account.main.name
}
