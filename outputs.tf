output "resource_group_name" {
  value = azurecaf_name.azurecaf_names["resource_group"].result
}

output "log_analytics_workspace_name" {
  value = azurecaf_name.azurecaf_names["log_analytics_workspace"].result
}

output "application_insights_name" {
  value = azurecaf_name.azurecaf_names["application_insights"].result
}
