# #### tags ###
variable "tags_params" {
  type = object({
    Application          = string
    Application_Name     = string
    Application_Owner    = string
    Application_Type     = string
    Business_Criticality = string
    Created_On_Date      = string
    DR_Tag               = string
    Data_Classification  = string
    Deployed_By          = string
    Environment          = string
    Managed_By           = string
    Purpose              = string
    SLA_Tier             = string
    Status               = string
    Take_On_Stream       = string
  })
  description = "Default tags to be applied to the resources of the project."
}

# #### target location ###
variable "location" {
  default     = "germanywestcentral"
  description = "Target location for resource deployment."
  type        = string
}

# #### ./naming.tf ###
variable "naming_params" {
  type = map(object({
    name          = string
    resource_type = string
    clean_input   = bool
  }))
  description = "(optional) the basename of the resource to create, the basename will be sanitized as per supported characters set for each Azure resources."
}

# #### ./log-analytics-workspace.tf ###
variable "sku" {
  description = "(Optional) Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018."
  type        = string
}

variable "retention_in_days" {
  description = "(Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number
}

# #### ./application-insights.tf ###
variable "application_type" {
  description = "(Required) Specifies the type of Application Insights to create."
  type        = string
}

# #### ./appservice-plan.tf ###
variable "app_srv_name" {
  description = "Name of the App Service Plan."
  type        = string
}

variable "os_type" {
  description = "(Required) The O/S type for the App Services to be hosted in this plan."
  type        = string
}

variable "app_srv_sku_name" {
  description = "(Required) The SKU for the plan."
  type        = string
}

# #### ./function-app.tf ###
variable "func_app_name" {
  description = "Name of the Function App."
  type        = string
}

variable "python_version" {
  description = "(Optional) The version of Python to run."
  type        = string
}

variable "allowed_origins" {
  description = "(Required) Specifies a list of origins that should be allowed to make cross-origin calls."
  type        = list(string)
}

variable "support_credentials" {
  description = "Optional) Are credentials allowed in CORS requests? Defaults to false."
  type        = bool
}

# #### ./storage-account.tf ###
variable "account_tier" {
  description = "(Required) Defines the Tier to use for this storage account."
  type        = string
}

variable "account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account."
  type        = string
}

# #### ./key-vault.tf ###
variable "kv_sku_name" {
  description = "(Required) The Name of the SKU used for this Key Vault. Possible values are standard and premium."
  type        = string
}
