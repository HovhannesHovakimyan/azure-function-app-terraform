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

# variable "resource_type" {
#   type        = string
#   description = "(optional) - describes the type of azure resource you are requesting a name from (eg. azure container registry: azurerm_container_registry)."
# }

# variable "prefixes" {
#   type        = list(string)
#   description = "(optional) - a list of prefix to append as the first characters of the generated name - prefixes will be separated by the separator character"
# }

# variable "suffixes" {
#   type        = list(string)
#   description = "(optional) - a list of additional suffix added after the basename, this is can be used to append resource index (eg. vm-001). Suffixes are separated by the separator character"
# }

# variable "random_length" {
#   type        = string
#   description = "(optional) - default to 0 : configure additional characters to append to the generated resource name. Random characters will remain compliant with the set of allowed characters per resources and will be appended before suffix(ess)."
# }

# variable "clean_input" {
#   type        = bool
#   description = "defaults to true. remove any noncompliant character from the name, suffix or prefix."
# }
