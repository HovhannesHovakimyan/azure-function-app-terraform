# #### resource groups ###
output "resource_group_name" {
  value = azurecaf_name.azurecaf_names["resource_group"].result
}

# #### log analytics ###
output "log_analytics_workspace_name" {
  value = azurecaf_name.azurecaf_names["log_analytics_workspace"].result
}

# #### application insights ###
output "application_insights_name" {
  value = azurecaf_name.azurecaf_names["application_insights"].result
}

output "instrumentation_key" {
  sensitive = true
  value     = azurerm_application_insights.main.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.main.app_id
}

# #### storage account ###
output "storage_account_name" {
  value = azurecaf_name.azurecaf_names["storage_account"].result
}

output "storage_queue_name" {
  value = azurecaf_name.azurecaf_names["storage_queue"].result
}

# #### service plan ###
output "service_plan_name" {
  value = azurerm_service_plan.main.name
}

# #### function app ###
output "function_app_name" {
  value = azurerm_linux_function_app.main.name
}

output "function_app_principal_id" {
  value = azurerm_linux_function_app.main.identity[0].principal_id
}

output "function_app_function_name" {
  value = azurerm_function_app_function.main.name
}

# #### key vault ###
output "key_vault_name" {
  value = azurerm_key_vault.main.name
}
