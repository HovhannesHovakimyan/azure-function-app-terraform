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
