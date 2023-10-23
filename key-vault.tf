data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "main" {
  name                       = azurecaf_name.azurecaf_names["key_vault"].result
  location                   = var.location
  resource_group_name        = azurerm_resource_group.main.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 7
  purge_protection_enabled   = false

  sku_name = var.kv_sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Delete",
      "Get",
      "List",
      "Purge",
      "Recover",
      "Set"
    ]
  }

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = azurerm_linux_function_app.main.identity[0].principal_id

    secret_permissions = [
      "Delete",
      "Get",
      "List",
      "Purge",
      "Recover",
      "Set"
    ]
  }

  tags = var.tags_params
}
