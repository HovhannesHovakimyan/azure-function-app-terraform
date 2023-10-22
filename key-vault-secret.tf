resource "azurerm_key_vault_secret" "main" {
  name         = "secret-hhcompany"
  value        = "hhcompanythebest"
  key_vault_id = azurerm_key_vault.main.id
}
