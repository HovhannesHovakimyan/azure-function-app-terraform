# Terraform code to deploy an Azure Function App triggered by the Storage Queue message.

Terraform code found in this repository will deploy the following Azure resources:
- Resource Group
- Log Analytics Workspace
- Application Insights
- Storage Account
-- Storage Queue
- Key Vault
-- Key Vault Secret
- App Service Plan
- Function App
-- Function based on Python v3.9
