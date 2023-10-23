resource "azurerm_linux_function_app" "main" {
  name                = var.func_app_name
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location

  storage_account_name       = azurerm_storage_account.main.name
  storage_account_access_key = azurerm_storage_account.main.primary_access_key
  service_plan_id            = azurerm_service_plan.main.id

  site_config {
    application_insights_key               = azurerm_application_insights.main.instrumentation_key
    application_insights_connection_string = azurerm_application_insights.main.connection_string
    application_stack {
      python_version = var.python_version
    }
    cors {
      allowed_origins     = var.allowed_origins
      support_credentials = var.support_credentials
    }
  }

  app_settings = {
    "KEY_VAULT_NAME" = azurecaf_name.azurecaf_names["key_vault"].result
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags_params
}
